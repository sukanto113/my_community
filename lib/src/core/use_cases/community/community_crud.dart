import '../../entities/community/community.dart';
import '../../entities/member/member.dart';
import '../../repositories/auth/auth_repo.dart';
import '../../repositories/community/community_repo.dart';
import '../../repositories/community/dtos/create/community_create_dot.dart';
import '../../repositories/community/dtos/update/community_update_dto.dart';
import '../../repositories/member/dtos/create/member_create_dto.dart';
import '../../repositories/member/member_repo.dart';

class CommunityCrud {
  CommunityCrud({
    required this.communityRepo,
    required this.memberRepo,
    required this.authRepo,
  });

  final ICommunityRepo communityRepo;
  final IMemberRepo memberRepo;
  final IAuthRepo authRepo;

  Future<void> create(String name) async {
    final user = await authRepo.getCurrentUser();
    if (user == null) throw UserNotFoundError();

    final communityId = await communityRepo.create(
      CommunityCreateDTO(name: name),
    );

    await memberRepo.addMember(MemberCreateDto(
      phone: user.phone,
      communityId: communityId,
      name: user.name,
      role: MemberRole.admin.name,
      profileImage: user.profileImageUrl,
      userId: user.id,
    ));
  }

  Future<void> update(Community community) async {
    final user = await authRepo.getCurrentUser();
    if (user == null) throw UserNotFoundError();

    final member = await memberRepo.getCommunityMemberByUserId(
      communityId: community.id,
      userId: user.id,
    );
    if (member == null) throw UserNotPermitError();
    if (member.role == "member") throw UserNotPermitError();

    await communityRepo.update(CommunityUpdateDTO(
      id: community.id,
      coverImage: community.coverImage,
      description: community.description,
      name: community.name,
      profileImage: community.profileImage,
    ));
  }

  Future<Iterable<Community>> getComunitiesForUser() async {
    final user = await authRepo.getCurrentUser();
    if (user == null) throw UserNotFoundError();

    return (await communityRepo.readCommunitiesByUser(user.id))
        .map((e) => Community(
              id: e.id,
              name: e.name,
              description: e.description,
              profileImage: e.profileImage,
              coverImage: e.coverImage,
            ));
  }

  Future<void> archive(String communityId) async {
    final user = await authRepo.getCurrentUser();
    if (user == null) throw UserNotFoundError();

    final member = await memberRepo.getCommunityMemberByUserId(
      communityId: communityId,
      userId: user.id,
    );
    if (member == null) throw UserNotPermitError();
    if (member.role == "member") throw UserNotPermitError();

    await communityRepo.archive(communityId);
  }
}
