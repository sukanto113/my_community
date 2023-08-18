import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_community/src/core/entities/user/user.dart';
import 'package:my_community/src/core/repositories/auth/auth_repo.dart';
import 'package:my_community/src/core/repositories/community/community_repo.dart';
import 'package:my_community/src/core/repositories/community/dtos/create/community_create_dot.dart';
import 'package:my_community/src/core/repositories/member/dtos/create/member_create_dto.dart';
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
final aUser = User(
  id: facker.randomGenerator.integer(1000).toString(),
  phone: facker.phoneNumber.us(),
  name: facker.person.name(),
);
final aCommunityName = facker.company.name();
final aCommunityId = facker.randomGenerator.integer(1000).toString();

late CommunityCrud sut;
late MockICommunityRepo communityRepo;
late MockIMemberRepo memberRepo;
late MockIAuthRepo authRepo;
void main() {
  group('Community create with auth', () {
    setUp(() async {
      communityRepo = MockICommunityRepo();
      memberRepo = MockIMemberRepo();
      authRepo = MockIAuthRepo();

      sut = CommunityCrud(communityRepo, memberRepo, authRepo);

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
}

void setupAuthWithAUser() {
  when(authRepo.getCurrentUser()).thenAnswer(
    (realInvocation) async => aUser,
  );
}
