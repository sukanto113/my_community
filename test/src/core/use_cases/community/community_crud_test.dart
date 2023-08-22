import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_community/src/core/entities/community/community.dart';
import 'package:my_community/src/core/entities/member/member.dart';
import 'package:my_community/src/core/entities/user/user.dart';
import 'package:my_community/src/core/repositories/auth/auth_repo.dart';
import 'package:my_community/src/core/repositories/community/community_repo.dart';
import 'package:my_community/src/core/repositories/community/dtos/create/community_create_dot.dart';
import 'package:my_community/src/core/repositories/community/dtos/read/community_read_dto.dart';
import 'package:my_community/src/core/repositories/community/dtos/update/community_update_dto.dart';
import 'package:my_community/src/core/repositories/member/dtos/create/member_create_dto.dart';
import 'package:my_community/src/core/repositories/member/dtos/read/member_read_dto.dart';
import 'package:my_community/src/core/repositories/member/member_repo.dart';
import 'package:my_community/src/core/use_cases/community/community_crud.dart';
import 'package:faker/faker.dart';

@GenerateNiceMocks([
  MockSpec<ICommunityRepo>(),
  MockSpec<IMemberRepo>(),
  MockSpec<IAuthRepo>(),
])
import 'community_crud_test.mocks.dart';

final facker = Faker();

final aUserId = facker.randomGenerator.integer(1000).toString();
final aUserPhone = facker.phoneNumber.us();
final aUserName = facker.person.name();

final aUser = User(
  id: aUserId,
  phone: aUserPhone,
  name: aUserName,
);

final aCommunityId = facker.randomGenerator.integer(10000).toString();
final bCommunityId = facker.randomGenerator.integer(10000).toString();
final aCommunityName = facker.company.name();
final bCommunityName = facker.company.name();
final aCommunityDescription = facker.lorem.sentence();
final bCommunityDescription = facker.lorem.sentence();
final aCommunityProfileImage = facker.lorem.sentence();
final bCommunityProfileImage = facker.lorem.sentence();
final aCommunityCoverImage = facker.lorem.sentence();
final bCommunityCoverImage = facker.lorem.sentence();

final aCommunityReadDto = CommunityReadDTO(
  id: aCommunityId,
  name: aCommunityName,
  description: aCommunityDescription,
  profileImage: aCommunityProfileImage,
  coverImage: aCommunityCoverImage,
);
final bCommunityReadDto = CommunityReadDTO(
  id: bCommunityId,
  name: bCommunityName,
  description: bCommunityDescription,
  profileImage: bCommunityProfileImage,
  coverImage: bCommunityCoverImage,
);

final aCommunity = Community(
  id: aCommunityId,
  name: aCommunityName,
  coverImage: aCommunityCoverImage,
  description: aCommunityDescription,
  profileImage: aCommunityProfileImage,
);

late CommunityCrud sut;
late MockICommunityRepo communityRepo;
late MockIMemberRepo memberRepo;
late MockIAuthRepo authRepo;

void setupSut() {
  communityRepo = MockICommunityRepo();
  memberRepo = MockIMemberRepo();
  authRepo = MockIAuthRepo();

  sut = CommunityCrud(communityRepo, memberRepo, authRepo);
}

void setupAuthWithAUser() {
  when(authRepo.getCurrentUser()).thenAnswer(
    (realInvocation) async => aUser,
  );
}

void setupAuthWithoutAUser() {
  when(authRepo.getCurrentUser()).thenAnswer((realInvocation) async => null);
}

void setupCommunityRepoWithTwoCommunity() {
  when(communityRepo.readCommunitiesByUser(any)).thenAnswer(
      (realInvocation) async => [aCommunityReadDto, bCommunityReadDto]);
}

void setupUserWithAdminRole() {
  when(memberRepo.getCommunityMemberByUserId(
          communityId: aCommunityId, userId: aUserId))
      .thenAnswer(
    (realInvocation) async => MemberReadDto(
      id: "",
      phone: "",
      communityId: "",
      name: "",
      role: "admin",
    ),
  );
}

void setupUserWithMemberRole() {
  when(memberRepo.getCommunityMemberByUserId(
          communityId: anyNamed("communityId"), userId: anyNamed("userId")))
      .thenAnswer(
    (realInvocation) async => MemberReadDto(
      id: "",
      phone: "",
      communityId: "",
      name: "",
      role: "member",
    ),
  );
}

void setupUserWithoutMember() {
  when(memberRepo.getCommunityMemberByUserId(
          communityId: anyNamed("communityId"), userId: anyNamed("userId")))
      .thenAnswer(
    (realInvocation) async => null,
  );
}

void main() {
  group('Community create with auth', () {
    setUp(() async {
      setupSut();
      setupAuthWithAUser();
    });

    test('should create a community -B', () async {
      await sut.create(aCommunityName);

      verify(communityRepo.create(any)).called(1);
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

    test('should add a member -A', () async {
      await sut.create(aCommunityName);

      verify(memberRepo.addMember(any));
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

  group('Community create without auth', () {
    setUp(() {
      setupSut();
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

  group('Community update with auth', () {
    setUp(() {
      setupSut();
      setupAuthWithAUser();
    });

    test('should update community -C', () async {
      setupUserWithAdminRole();

      await sut.update(aCommunity);

      verify(communityRepo.update(any));
    });

    test('should update exactly one time -C.A', () async {
      setupUserWithAdminRole();

      await sut.update(aCommunity);

      verify(communityRepo.update(any)).called(1);
    });

    test('should update a community with same id -C.B', () async {
      setupUserWithAdminRole();

      await sut.update(aCommunity);

      verify(
        communityRepo.update(
          argThat(
            isA<CommunityUpdateDTO>().having((p0) => p0.id, "id", aCommunityId),
          ),
        ),
      );
    });

    test('should update community name -C.D', () async {
      setupUserWithAdminRole();

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
    test('should update community description -C.E', () async {
      setupUserWithAdminRole();

      await sut.update(aCommunity);

      verify(
        communityRepo.update(
          argThat(
            isA<CommunityUpdateDTO>().having(
                (p0) => p0.description, "description", aCommunityDescription),
          ),
        ),
      );
    });

    test('should update community profileImage -C.F', () async {
      setupUserWithAdminRole();

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

    test('should update community coverImage -C.G', () async {
      setupUserWithAdminRole();

      await sut.update(aCommunity);

      verify(
        communityRepo.update(
          argThat(
            isA<CommunityUpdateDTO>().having(
                (p0) => p0.coverImage, "coverImage", aCommunityCoverImage),
          ),
        ),
      );
    });
    test('should not update if user is in member role', () async {
      setupUserWithMemberRole();

      try {
        await sut.update(aCommunity);
      } catch (e) {}

      verifyNever(communityRepo.update(any));
    });
  });

  group('Community update without auth', () {
    setUp(() {
      setupSut();
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

  group('Communities get with auth', () {
    setUp(() {
      setupSut();
      setupAuthWithAUser();
    });

    test('should read data from repo exactly only once -D', () async {
      await sut.getComunitiesForUser();

      verify(communityRepo.readCommunitiesByUser(any)).called(1);
    });

    test('should returns communities for currentUser -D.A', () async {
      await sut.getComunitiesForUser();

      verify(communityRepo.readCommunitiesByUser(aUserId));
    });

    test('should match total number communities with repos -D.B', () async {
      setupCommunityRepoWithTwoCommunity();

      final communities = await sut.getComunitiesForUser();

      expect(communities.length, 2);
    });

    test('should returned community id matched with repo -D.C', () async {
      setupCommunityRepoWithTwoCommunity();

      final communities = await sut.getComunitiesForUser();

      expect(communities.elementAt(0).id, aCommunityId);
      expect(communities.elementAt(1).id, bCommunityId);
    });
    test('should returned community name matched with repo -D.D', () async {
      setupCommunityRepoWithTwoCommunity();

      final communities = await sut.getComunitiesForUser();

      expect(communities.elementAt(0).name, aCommunityName);
      expect(communities.elementAt(1).name, bCommunityName);
    });
    test('should returned community description matched with repo -D.E',
        () async {
      setupCommunityRepoWithTwoCommunity();

      final communities = await sut.getComunitiesForUser();

      expect(communities.elementAt(0).description, aCommunityDescription);
      expect(communities.elementAt(1).description, bCommunityDescription);
    });
    test('should returned community profileImage matched with repo -D.F',
        () async {
      setupCommunityRepoWithTwoCommunity();

      final communities = await sut.getComunitiesForUser();

      expect(communities.elementAt(0).profileImage, aCommunityProfileImage);
      expect(communities.elementAt(1).profileImage, bCommunityProfileImage);
    });
    test('should returned community coverImage matched with repo -D.G',
        () async {
      setupCommunityRepoWithTwoCommunity();

      final communities = await sut.getComunitiesForUser();

      expect(communities.elementAt(0).coverImage, aCommunityCoverImage);
      expect(communities.elementAt(1).coverImage, bCommunityCoverImage);
    });
  });

  group('Communities get without auth', () {
    setUp(() {
      setupSut();
      setupAuthWithoutAUser();
    });
    test('should throw UserNotFoundError', () {
      expect(() async {
        await sut.getComunitiesForUser();
      }, throwsA(isA<UserNotFoundError>()));
    });
  });

  group('Community archive', () {
    group('with auth', () {
      setUp(() {
        setupSut();
        setupAuthWithAUser();
      });

      test('should call getCommunityMemberByUserId exactly once', () async {
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
      test(
          'should throw UserNotPermitError if user is not member of the community',
          () {
        setupUserWithoutMember();

        expect(() async {
          await sut.archive(aCommunityId);
        }, throwsA(isA<UserNotPermitError>()));
      });
      group('user with admin role', () {
        setUp(() {
          setupUserWithAdminRole();
        });
        test('should archive the community -E', () async {
          await sut.archive(aCommunityId);

          verify(communityRepo.archive(aCommunityId));
        });

        test('should call archive exactly once -E.B', () async {
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
        setupSut();
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
