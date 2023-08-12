import '../../entities/community/community.dart';
import '../../entities/member/member.dart';
import '../../entities/user/user.dart';
import '../../repositories/auth/auth_repo.dart';
import '../../repositories/community/community_repo.dart';
import '../../repositories/community/dtos/create/community_create_dot.dart';
import '../../repositories/community/mapper.dart';
import '../../repositories/member/dtos/create/member_create_dto.dart';
import '../../repositories/member/member_repo.dart';

class CommunityCrud {
  CommunityCrud(this.communityRepo, this.memberRepo, this.authRepo);
  final ICommunityRepo communityRepo;
  final IMemberRepo memberRepo;
  final IAuthRepo authRepo;

  //controller will only handle event from ui
  Future<void> create(String name) async {
    final User? user = await authRepo.getCurrentUser();
    if (user == null) throw UserNotFound();
    final communityId = await communityRepo.create(
      CommunityCreateDTO(name: name),
    );
    memberRepo.addMember(MemberCreateDto(
      phone: user.phone,
      communityId: communityId,
      name: name,
      role: MemberRole.admin.name,
      profileImage: user.profileImageUrl,
    ));
  }

  Future<void> update(Community community) async {
    await communityRepo.update(community.toUpdateDto());
  }

  Future<Iterable<Community>> getComunitiesForUser() async {
    final User? user = await authRepo.getCurrentUser();
    if (user == null) throw UserNotFound();
    return (await communityRepo.readCommunitiesByUser(user.id))
        .map((e) => e.toCommunity());
  }
}
