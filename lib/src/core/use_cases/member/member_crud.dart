import 'package:my_community/src/core/repositories/auth/auth_repo.dart';

import '../../entities/member/member.dart';
import '../../repositories/member/dtos/create/member_create_dto.dart';
import '../../repositories/member/member_repo.dart';

class MemberCrud {
  MemberCrud({required this.authRepo, required this.memberRepo});

  final IMemberRepo memberRepo;
  final IAuthRepo authRepo;
  Future<void> addMember(
      {required communityId, required phone, required name}) async {
    final user = await authRepo.getCurrentUser();
    if (user == null) {
      throw UserNotFoundError();
    }
    final member = await memberRepo.getCommunityMemberByUserId(
        communityId: communityId, userId: user.id);
    if (member == null || member.role == "member") throw UserNotPermitError();
    await memberRepo.addMember(
      MemberCreateDto(
        phone: phone,
        communityId: communityId,
        name: name,
        role: "member",
      ),
    );
  }
}
