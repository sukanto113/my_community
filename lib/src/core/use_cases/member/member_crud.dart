import 'package:my_community/src/core/repositories/member/dtos/member_add_dto.dart';

import '../../entities/member/member.dart';
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
    memberRepo.addMember(MemberAddDto(
      phone: phone,
      communityId: communityId,
      name: name,
      role: MemberRole.member.name,
      designation: designation,
      profileImage: profileImage,
    ));
  }
}
