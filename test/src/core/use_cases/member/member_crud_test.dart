import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:my_community/src/core/entities/member/member.dart';
import 'package:my_community/src/core/repositories/auth/auth_repo.dart';
import 'package:my_community/src/core/repositories/member/dtos/create/member_create_dto.dart';
import 'package:my_community/src/core/repositories/member/dtos/read/member_read_dto.dart';
import 'package:my_community/src/core/use_cases/member/member_crud.dart';

import '../use_case_test_utils.dart';
import '../use_case_test_utils.mocks.dart';

final aMemberId = facker.guid.guid();
final aMemberName = facker.person.name();
final aMemberPhone = facker.phoneNumber.us();
final aMemberRole = "admin";
final aMemberUserId = facker.guid.guid();
final aMemberDesignation = facker.job.title();
final aMemberProfileImage = facker.image.image(random: true);

final bMemberId = facker.guid.guid();
final bMemberName = facker.person.name();
final bMemberPhone = facker.phoneNumber.us();
final bMemberRole = "member";
final bMemberUserId = facker.guid.guid();
final bMemberDesignation = facker.job.title();
final bMemberProfileImage = facker.image.image(random: true);

late MemberCrud sut;

void setupSut() {
  authRepo = MockIAuthRepo();
  memberRepo = MockIMemberRepo();
  sut = MemberCrud(
    authRepo: authRepo,
    memberRepo: memberRepo,
  );
}

void setupMemberRepoWithTwoMember() {
  when(memberRepo.getMembers(aCommunityId)).thenAnswer(
    (realInvocation) async => [
      MemberReadDto(
        id: aMemberId,
        phone: aMemberPhone,
        communityId: aCommunityId,
        name: aMemberName,
        role: aMemberRole,
        userId: aMemberUserId,
        designation: aMemberDesignation,
        profileImage: aMemberProfileImage,
      ),
      MemberReadDto(
        id: bMemberId,
        phone: bMemberPhone,
        communityId: aCommunityId,
        name: bMemberName,
        role: bMemberRole,
        userId: bMemberUserId,
        designation: bMemberDesignation,
        profileImage: bMemberProfileImage,
      ),
    ],
  );
}

Future<void> addAMember() async {
  await sut.addMember(
    communityId: aCommunityId,
    phone: aMemberPhone,
    name: aMemberName,
  );
}

void main() {
  group('Member add', () {
    setUp(() {
      setupSut();
    });
    group('with auth', () {
      setUp(() {
        setupAuthWithAUser();
      });
      test(
        'should call repo.getCommunityMemberByUserId exactly once',
        () async {
          try {
            await addAMember();
          } catch (e) {}

          verify(memberRepo.getCommunityMemberByUserId(
            communityId: anyNamed("communityId"),
            userId: anyNamed("userId"),
          )).called(1);
        },
      );

      group('user with admin role', () {
        setUp(() {
          setupUserWithAdminRole();
        });
        test('should call repo.addMember exactly once', () async {
          await addAMember();

          verify(memberRepo.addMember(any)).called(1);
        });

        group('should set property', () {
          test('name', () async {
            await addAMember();

            verify(memberRepo.addMember(argThat(
              isA<MemberCreateDto>()
                  .having((p0) => p0.name, "name", aMemberName),
            )));
          });
          test('phone', () async {
            await addAMember();

            verify(memberRepo.addMember(argThat(
              isA<MemberCreateDto>()
                  .having((p0) => p0.phone, "phone", aMemberPhone),
            )));
          });
          test('communityId', () async {
            await addAMember();

            verify(memberRepo.addMember(argThat(
              isA<MemberCreateDto>()
                  .having((p0) => p0.communityId, "communityId", aCommunityId),
            )));
          });
        });
        test('should add member with member role', () async {
          await addAMember();

          verify(memberRepo.addMember(argThat(
            isA<MemberCreateDto>().having((p0) => p0.role, "role", "member"),
          )));
        });
      });
      group('user with member role', () {
        setUp(() {
          setupUserWithMemberRole();
        });
        test('should throw UserNotPermitError', () {
          expect(() async {
            await addAMember();
          }, throwsA(isA<UserNotPermitError>()));
        });

        test('should not call repo.addMember', () async {
          try {
            await addAMember();
          } catch (e) {}

          verifyNever(memberRepo.addMember(any));
        });
      });
      group('user not a member', () {
        test('should throw UserNotPermitError', () {
          expect(() async {
            await addAMember();
          }, throwsA(isA<UserNotPermitError>()));
        });

        test('should not call repo.memberAdd', () async {
          try {
            await addAMember();
          } catch (e) {}

          verifyNever(memberRepo.addMember(any));
        });
      });
    });
    group('without auth', () {
      setUp(() {
        setupAuthWithoutAUser();
      });
      test('should throw UserNotFoundError', () {
        expect(() async {
          await addAMember();
        }, throwsA(isA<UserNotFoundError>()));
      });
      test('should not call repo.getCommunityMemberByUserId', () async {
        try {
          await addAMember();
        } catch (e) {}

        verifyNever(memberRepo.getCommunityMemberByUserId(
          communityId: anyNamed("communityId"),
          userId: anyNamed("userId"),
        ));
      });
      test('should not call repo.addMember', () async {
        try {
          await addAMember();
        } catch (e) {}

        verifyNever(memberRepo.addMember(any));
      });
    });
  });

  group('Member get', () {
    setUp(() {
      setupSut();
    });
    group('with auth', () {
      setUp(() {
        setupAuthWithAUser();
      });
      group('when user is member', () {
        setUp(() {
          setupUserWithMemberRole();
        });
        test('should call repo.get exactly once', () async {
          await sut.get(aCommunityId);

          verify(memberRepo.getMembers(any)).called(1);
        });

        test('should get members for the community', () async {
          await sut.get(aCommunityId);

          verify(memberRepo.getMembers(aCommunityId));
        });

        test('should returns all members for the community', () async {
          setupMemberRepoWithTwoMember();
          final members = await sut.get(aCommunityId);
          expect(members.length, 2);
        });

        group('should get property', () {
          setUp(() {
            setupMemberRepoWithTwoMember();
          });
          test('id', () async {
            final members = await sut.get(aCommunityId);

            expect(members.elementAt(0).id, aMemberId);
            expect(members.elementAt(1).id, bMemberId);
          });
          test('phone', () async {
            final members = await sut.get(aCommunityId);

            expect(members.elementAt(0).phone, aMemberPhone);
            expect(members.elementAt(1).phone, bMemberPhone);
          });
          test('communityId', () async {
            final members = await sut.get(aCommunityId);

            expect(members.elementAt(0).communityId, aCommunityId);
            expect(members.elementAt(1).communityId, aCommunityId);
          });
          test('name', () async {
            final members = await sut.get(aCommunityId);

            expect(members.elementAt(0).name, aMemberName);
            expect(members.elementAt(1).name, bMemberName);
          });
          test('role', () async {
            final members = await sut.get(aCommunityId);

            expect(members.elementAt(0).role, MemberRole.admin);
            expect(members.elementAt(1).role, MemberRole.member);
          });
          test('userId', () async {
            final members = await sut.get(aCommunityId);

            expect(members.elementAt(0).userId, aMemberUserId);
            expect(members.elementAt(1).userId, bMemberUserId);
          });
          test('designation', () async {
            final members = await sut.get(aCommunityId);

            expect(members.elementAt(0).designation, aMemberDesignation);
            expect(members.elementAt(1).designation, bMemberDesignation);
          });
          test('profileImage', () async {
            final members = await sut.get(aCommunityId);

            expect(members.elementAt(0).profileImage, aMemberProfileImage);
            expect(members.elementAt(1).profileImage, bMemberProfileImage);
          });
        });
      });

      group('when user is not member', () {
        setUp(() {
          setupUserWithoutMember();
        });
        test('should throw UserNotPermitError', () {
          expect(() async {
            await sut.get(aCommunityId);
          }, throwsA(isA<UserNotPermitError>()));
        });
        test('should not call repo.getMembers', () {});
      });
    });
    group('without auth', () {
      setUp(() {
        setupAuthWithoutAUser();
      });

      test('should throw UserNotFoundError', () async {
        expect(() async {
          await sut.get(aCommunityId);
        }, throwsA(isA<UserNotFoundError>()));
      });
      test('should not call repo.getMembers', () {});
    });
  });
}
