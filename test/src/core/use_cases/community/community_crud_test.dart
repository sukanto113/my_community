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

@GenerateNiceMocks([
  MockSpec<ICommunityRepo>(),
  MockSpec<IMemberRepo>(),
  MockSpec<IAuthRepo>(),
])
import 'community_crud_test.mocks.dart';

void main() {
  group('Community create', () {
    const aUser = User(id: "1", phone: "+8801234567891");
    const aCommunityName = "My Awsom Community";

    late CommunityCrud sut;
    late MockICommunityRepo communityRepo;
    late MockIMemberRepo memberRepo;
    late MockIAuthRepo authRepo;

    setUp(() {
      communityRepo = MockICommunityRepo();
      memberRepo = MockIMemberRepo();
      authRepo = MockIAuthRepo();

      sut = CommunityCrud(communityRepo, memberRepo, authRepo);
    });
    test('should call community reop create with the name', () async {
      when(authRepo.getCurrentUser()).thenAnswer(
        (realInvocation) async => aUser,
      );

      await sut.create("My Awsom Community");

      verify(
        communityRepo.create(
          argThat(equals(const CommunityCreateDTO(name: aCommunityName))),
        ),
      ).called(1);
    });

    test('should add user as admin to the community', () async {
      when(authRepo.getCurrentUser()).thenAnswer(
        (realInvocation) async => aUser,
      );
      when(communityRepo.create(any)).thenAnswer((realInvocation) async => "2");

      await sut.create(aCommunityName);

      verify(
        memberRepo.addMember(
          argThat(
            isA<MemberCreateDto>()
                .having((e) => e.communityId, "communityId", "2")
                .having((e) => e.role, "role", "admin"),
          ),
        ),
      ).called(1);
    });
  });
}
