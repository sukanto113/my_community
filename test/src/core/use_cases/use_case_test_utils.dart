import 'package:faker/faker.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_community/src/core/entities/community/community.dart';
import 'package:my_community/src/core/entities/member/member.dart';
import 'package:my_community/src/core/entities/user/user.dart';
import 'package:my_community/src/core/repositories/auth/auth_repo.dart';
import 'package:my_community/src/core/repositories/community/community_repo.dart';
import 'package:my_community/src/core/repositories/community/dtos/read/community_read_dto.dart';
import 'package:my_community/src/core/repositories/member/dtos/read/member_read_dto.dart';
import 'package:my_community/src/core/repositories/member/member_repo.dart';

@GenerateNiceMocks([
  MockSpec<ICommunityRepo>(),
  MockSpec<IMemberRepo>(),
  MockSpec<IAuthRepo>(),
])
import 'use_case_test_utils.mocks.dart';

final facker = Faker();

final aUserId = facker.randomGenerator.integer(1000).toString();
final aUserAsMemberId = facker.randomGenerator.integer(1000).toString();
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
final aCommunityProfileImage = facker.image.image(random: true);
final bCommunityProfileImage = facker.image.image(random: true);
final aCommunityCoverImage = facker.image.image(random: true);
final bCommunityCoverImage = facker.image.image(random: true);

final aMemberId = facker.guid.guid();
final aMemberName = facker.person.name();
final aMemberPhone = facker.phoneNumber.us();
final aMemberRole = MemberRole.admin;
final aMemberDtoRole = "admin";
final aMemberUserId = facker.guid.guid();
final aMemberDesignation = facker.job.title();
final aMemberProfileImage = facker.image.image(random: true);

final bMemberId = facker.guid.guid();
final bMemberName = facker.person.name();
final bMemberPhone = facker.phoneNumber.us();
final bMemberRole = MemberRole.member;
final bMemberDtoRole = "member";
final bMemberUserId = facker.guid.guid();
final bMemberDesignation = facker.job.title();
final bMemberProfileImage = facker.image.image(random: true);

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

final aMemberReadDto = MemberReadDto(
  id: aMemberId,
  phone: aMemberPhone,
  communityId: aCommunityId,
  name: aMemberName,
  role: aMemberDtoRole,
  userId: aMemberUserId,
  designation: aMemberDesignation,
  profileImage: aMemberProfileImage,
);

final bMemberReadDto = MemberReadDto(
  id: bMemberId,
  phone: bMemberPhone,
  communityId: aCommunityId,
  name: bMemberName,
  role: bMemberDtoRole,
  userId: bMemberUserId,
  designation: bMemberDesignation,
  profileImage: bMemberProfileImage,
);

final aMember = Member(
  id: aMemberId,
  phone: aMemberPhone,
  communityId: aCommunityId,
  name: aMemberName,
  role: aMemberRole,
  designation: aMemberDesignation,
  profileImage: aMemberProfileImage,
  userId: aUserId,
);

late MockICommunityRepo communityRepo;
late MockIMemberRepo memberRepo;
late MockIAuthRepo authRepo;

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
  when(memberRepo.getCommunityMemberIdByUserId(
    communityId: aCommunityId,
    userId: aUserId,
  )).thenAnswer((realInvocation) async => aUserAsMemberId);

  when(memberRepo.getMember(aUserAsMemberId)).thenAnswer(
    (realInvocation) async => MemberReadDto(
      id: aUserAsMemberId,
      phone: "",
      communityId: aCommunityId,
      name: "",
      role: "admin",
    ),
  );
}

void setupUserWithMemberRole() {
  when(memberRepo.getCommunityMemberIdByUserId(
    communityId: aCommunityId,
    userId: aUserId,
  )).thenAnswer((realInvocation) async => aUserAsMemberId);

  when(memberRepo.getMember(aUserAsMemberId)).thenAnswer(
    (realInvocation) async => MemberReadDto(
      id: aUserAsMemberId,
      phone: "",
      communityId: aCommunityId,
      name: "",
      role: "member",
    ),
  );
}

void setupUserAsTheMember() {
  when(memberRepo.getCommunityMemberIdByUserId(
          communityId: aCommunityId, userId: aUserId))
      .thenAnswer(
    (realInvocation) async => aMemberId,
  );
}

void setupUserWithoutMember() {
  when(memberRepo.getCommunityMemberIdByUserId(
    communityId: aCommunityId,
    userId: aUserId,
  )).thenAnswer(
    (realInvocation) async => null,
  );
}

void setupMemberRepoWithTwoMember() {
  when(memberRepo.getMembers(aCommunityId)).thenAnswer(
    (realInvocation) async => [
      aMemberReadDto,
      bMemberReadDto,
    ],
  );
}

void setupACommunityWithAMember() {
  when(memberRepo.getMember(aMemberId)).thenAnswer(
    (realInvocation) async => MemberReadDto(
      id: aMemberId,
      phone: "",
      communityId: aCommunityId,
      name: "",
      role: "",
    ),
  );
}

setupMemberWithAdminRole() {
  when(memberRepo.getMember(aMemberId)).thenAnswer(
    (realInvocation) async => MemberReadDto(
      id: aMemberId,
      phone: "",
      communityId: aCommunityId,
      name: "",
      role: "admin",
    ),
  );
}

setupMemberWithMemberRole() {
  when(memberRepo.getMember(aMemberId)).thenAnswer(
    (realInvocation) async => MemberReadDto(
      id: aMemberId,
      phone: "",
      communityId: aCommunityId,
      name: "",
      role: "member",
    ),
  );
}

void setupACommunityWithoutAMember() {
  when(memberRepo.getMember(aMemberId))
      .thenAnswer((realInvocation) async => null);
}
