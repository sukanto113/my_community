import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:my_community/src/core/repositories/auth/auth_repo.dart';
import 'package:my_community/src/core/repositories/community/dtos/create/community_create_dot.dart';
import 'package:my_community/src/core/repositories/community/dtos/update/community_update_dto.dart';
import 'package:my_community/src/core/repositories/member/dtos/create/member_create_dto.dart';
import 'package:my_community/src/core/use_cases/community/community_crud.dart';

import '../use_case_test_utils.dart';
import '../use_case_test_utils.mocks.dart';


late CommunityCrud sut;

void setupSut() {
  communityRepo = MockICommunityRepo();
  memberRepo = MockIMemberRepo();
  authRepo = MockIAuthRepo();

  sut = CommunityCrud(communityRepo, memberRepo, authRepo);
}


void main() {
  group('Community create', () {
    setUp(() {
      setupSut();
    });
    group('with auth', () {
      setUp(() async {
        setupAuthWithAUser();
      });

      test('should create a community with the name -B.A', () async {
        await sut.create(aCommunityName);

        verify(
          communityRepo.create(
            argThat(
              isA<CommunityCreateDTO>()
                  .having((p0) => p0.name, "name", aCommunityName),
            ),
          ),
        ).called(1);
      });

      test('should add exactly one member -A.A', () async {
        await sut.create(aCommunityName);

        verify(memberRepo.addMember(any)).called(1);
      });

      test('should add user as member -A.B', () async {
        await sut.create(aCommunityName);

        verify(
          memberRepo.addMember(
            argThat(
              isA<MemberCreateDto>()
                  .having((p0) => p0.userId, "userId", aUser.id),
            ),
          ),
        );
      });

      test('should add member with name same as user name -A.C', () async {
        await sut.create(aCommunityName);

        verify(
          memberRepo.addMember(
            argThat(isA<MemberCreateDto>()
                .having((p0) => p0.name, "name", aUser.name)),
          ),
        );
      });

      test('should add user as admin to the community -A.D', () async {
        await sut.create(aCommunityName);

        verify(
          memberRepo.addMember(
            argThat(
              isA<MemberCreateDto>().having((e) => e.role, "role", "admin"),
            ),
          ),
        ).called(1);
      });

      test('should add a member to the community -(A&B).A', () async {
        when(communityRepo.create(any))
            .thenAnswer((realInvocation) async => aCommunityId);

        await sut.create(aCommunityName);

        verify(
          memberRepo.addMember(
            argThat(isA<MemberCreateDto>()
                .having((p0) => p0.communityId, "communityId", aCommunityId)),
          ),
        );
      });
    });
    group('without auth', () {
      setUp(() {
        setupAuthWithoutAUser();
      });
      test('should throw UserNotFound error', () {
        expect(
          () async {
            await sut.create(aCommunityName);
          },
          throwsA(isA<UserNotFoundError>()),
        );
      });
    });
  });

  group('Community update', () {
    setUp(() {
      setupSut();
    });
    group('with auth', () {
      setUp(() {
        setupAuthWithAUser();
      });
      group('user with admin role', () {
        setUp(() {
          setupUserWithAdminRole();
        });
        test('should call repo.update exactly once -C.A', () async {
          await sut.update(aCommunity);

          verify(communityRepo.update(any)).called(1);
        });

        test('should update the community -C.B', () async {
          await sut.update(aCommunity);

          verify(
            communityRepo.update(
              argThat(
                isA<CommunityUpdateDTO>()
                    .having((p0) => p0.id, "id", aCommunityId),
              ),
            ),
          );
        });

        group('should update property', () {
          test('name -C.D', () async {
            await sut.update(aCommunity);

            verify(
              communityRepo.update(
                argThat(
                  isA<CommunityUpdateDTO>()
                      .having((p0) => p0.name, "name", aCommunityName),
                ),
              ),
            );
          });
          test('description -C.E', () async {
            await sut.update(aCommunity);

            verify(
              communityRepo.update(
                argThat(
                  isA<CommunityUpdateDTO>().having((p0) => p0.description,
                      "description", aCommunityDescription),
                ),
              ),
            );
          });

          test('profileImage -C.F', () async {
            await sut.update(aCommunity);

            verify(
              communityRepo.update(
                argThat(
                  isA<CommunityUpdateDTO>().having((p0) => p0.profileImage,
                      "profileImage", aCommunityProfileImage),
                ),
              ),
            );
          });

          test('coverImage -C.G', () async {
            await sut.update(aCommunity);

            verify(
              communityRepo.update(
                argThat(
                  isA<CommunityUpdateDTO>().having((p0) => p0.coverImage,
                      "coverImage", aCommunityCoverImage),
                ),
              ),
            );
          });
        });
      });
      group('user with member role', () {
        setUp(() {
          setupUserWithMemberRole();
        });
        test('should not call repo.update', () async {
          try {
            await sut.update(aCommunity);
          } catch (e) {}

          verifyNever(communityRepo.update(any));
        });

        test('should throw UserNotPermitError', () {
          expect(
            () async {
              await sut.update(aCommunity);
            },
            throwsA(isA<UserNotPermitError>()),
          );
        });
      });
    });

    group('without auth', () {
      setUp(() {
        setupAuthWithoutAUser();
      });

      test('should throw UserNotFound error', () {
        expect(
          () async {
            await sut.update(aCommunity);
          },
          throwsA(isA<UserNotFoundError>()),
        );
      });
    });
  });

  group('Community get', () {
    setUp(() {
      setupSut();
    });
    group('with auth', () {
      setUp(() {
        setupAuthWithAUser();
      });
      test('should call repo.readCommunitiesByUser exactly only -D', () async {
        await sut.getComunitiesForUser();

        verify(communityRepo.readCommunitiesByUser(any)).called(1);
      });

      test('should returns communities for user -D.A', () async {
        await sut.getComunitiesForUser();

        verify(communityRepo.readCommunitiesByUser(aUserId));
      });

      test('should get all communities for user -D.B', () async {
        setupCommunityRepoWithTwoCommunity();

        final communities = await sut.getComunitiesForUser();

        expect(communities.length, 2);
      });
      group('shoud get property', () {
        test('id -D.C', () async {
          setupCommunityRepoWithTwoCommunity();

          final communities = await sut.getComunitiesForUser();

          expect(communities.elementAt(0).id, aCommunityId);
          expect(communities.elementAt(1).id, bCommunityId);
        });
        test('name -D.D', () async {
          setupCommunityRepoWithTwoCommunity();

          final communities = await sut.getComunitiesForUser();

          expect(communities.elementAt(0).name, aCommunityName);
          expect(communities.elementAt(1).name, bCommunityName);
        });
        test('description -D.E', () async {
          setupCommunityRepoWithTwoCommunity();

          final communities = await sut.getComunitiesForUser();

          expect(communities.elementAt(0).description, aCommunityDescription);
          expect(communities.elementAt(1).description, bCommunityDescription);
        });
        test('profileImage -D.F', () async {
          setupCommunityRepoWithTwoCommunity();

          final communities = await sut.getComunitiesForUser();

          expect(communities.elementAt(0).profileImage, aCommunityProfileImage);
          expect(communities.elementAt(1).profileImage, bCommunityProfileImage);
        });
        test('coverImage -D.G', () async {
          setupCommunityRepoWithTwoCommunity();

          final communities = await sut.getComunitiesForUser();

          expect(communities.elementAt(0).coverImage, aCommunityCoverImage);
          expect(communities.elementAt(1).coverImage, bCommunityCoverImage);
        });
      });
    });
    group('without auth', () {
      setUp(() {
        setupAuthWithoutAUser();
      });
      test('should throw UserNotFoundError', () {
        expect(() async {
          await sut.getComunitiesForUser();
        }, throwsA(isA<UserNotFoundError>()));
      });
    });
  });

  group('Community archive', () {
    setUp(() {
      setupSut();
    });

    group('with auth', () {
      setUp(() {
        setupAuthWithAUser();
      });

      test('should call repo.getCommunityMemberByUserId exactly once',
          () async {
        try {
          await sut.archive(aCommunityId);
        } catch (e) {}

        verify(
          memberRepo.getCommunityMemberByUserId(
            communityId: anyNamed("communityId"),
            userId: anyNamed("userId"),
          ),
        ).called(1);
      });
      group('user with admin role', () {
        setUp(() {
          setupUserWithAdminRole();
        });
        test('should archive the community -E', () async {
          await sut.archive(aCommunityId);

          verify(communityRepo.archive(aCommunityId));
        });

        test('should call repo.archive exactly once -E.B', () async {
          await sut.archive(aCommunityId);

          verify(communityRepo.archive(any)).called(1);
        });
      });
      group('user with member role', () {
        test('should not archive the community', () async {
          setupUserWithMemberRole();
          try {
            await sut.archive(aCommunityId);
          } catch (e) {}

          verifyNever(communityRepo.archive(any));
        });
        test('should throw UserNotPermitError', () {
          setupUserWithMemberRole();

          expect(() async {
            await sut.archive(aCommunityId);
          }, throwsA(isA<UserNotPermitError>()));
        });
      });
    });
    group('without auth', () {
      setUp(() {
        setupAuthWithoutAUser();
      });

      test('should throw UserNotFoundError', () {
        expect(() async {
          await sut.archive(aCommunityId);
        }, throwsA(isA<UserNotFoundError>()));
      });
    });
  });
}
