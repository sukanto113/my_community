import '../../entities/member/member.dart';
import '../../repositories/member/dtos/create/member_create_dto.dart';
import '../../repositories/member/member_repo.dart';

class MemberCrud {
  MemberCrud(this.memberRepo);
  final IMemberRepo memberRepo;
  Future<Iterable<Member>> getMembers(String communityId) async {
    return await memberRepo.getMembers(communityId);
  }

  Future<void> addMember({
    required String communityId,
    required String name,
    required String phone,
    String? designation,
    String? profileImage,
  }) async {
    memberRepo.addMember(MemberCreateDto(
      phone: phone,
      communityId: communityId,
      name: name,
      role: MemberRole.member.name,
      designation: designation,
      profileImage: profileImage,
    ));
  }
}
