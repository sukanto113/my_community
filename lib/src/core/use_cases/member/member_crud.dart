import 'package:my_community/src/core/repositories/member/dtos/update/member_update_dto.dart';
import 'package:my_community/src/core/repositories/member/member_repo_extension.dart';

import '../../entities/member/member.dart';
import '../../repositories/auth/auth_repo.dart';
import '../../repositories/member/dtos/create/member_create_dto.dart';
import '../../repositories/member/member_repo.dart';
import '../../utils/errors.dart';

class MemberCrud {
  MemberCrud({required this.authRepo, required this.memberRepo});

  final IMemberRepo memberRepo;
  final IAuthRepo authRepo;

  Future<void> addMember({
    required communityId,
    required phone,
    required name,
  }) async {
    final user = await authRepo.getCurrentUser();
    if (user == null) throw UserNotFoundError();

    final userAsMember = await memberRepo.getUserAsMember(
      communityId: communityId,
      userId: user.id,
    );

    if (userAsMember == null) throw UserNotPermitError();
    if (userAsMember.role == "member") throw UserNotPermitError();

    await memberRepo.addMember(
      MemberCreateDto(
        phone: phone,
        communityId: communityId,
        name: name,
        role: "member",
      ),
    );
  }

  Future<Iterable<Member>> get(String communityId) async {
    final user = await authRepo.getCurrentUser();
    if (user == null) throw UserNotFoundError();

    final member = await memberRepo.getUserAsMember(
      communityId: communityId,
      userId: user.id,
    );
    if (member == null) throw UserNotPermitError();

    return (await memberRepo.getMembers(communityId)).map(
      (e) => Member(
        id: e.id,
        phone: e.phone,
        communityId: e.communityId,
        name: e.name,
        role: switch (e.role) {
          "member" => MemberRole.member,
          "admin" => MemberRole.admin,
          _ => MemberRole.member,
        },
        userId: e.userId,
        designation: e.designation,
        profileImage: e.profileImage,
      ),
    );
  }

  Future<void> updateMember({
    required String id,
    String? phone,
    String? name,
    String? designation,
    String? profileImage,
  }) async {
    final user = await authRepo.getCurrentUser();
    if (user == null) throw UserNotFoundError();
    final member = await memberRepo.getMember(id);
    if (member == null) throw MemberNotFoundError();

    final userAsMember = await memberRepo.getUserAsMember(
      communityId: member.communityId,
      userId: user.id,
    );
    if (userAsMember == null) throw UserNotPermitError();
    if (userAsMember.role != "admin" && member.id != userAsMember.id) {
      throw UserNotPermitError();
    }
    await memberRepo.update(MemberUpdateDto(
      id: id,
      phone: phone,
      name: name,
      designation: designation,
      profileImage: profileImage,
    ));
  }

  Future<void> remove(String memberId) async {
    final user = await authRepo.getCurrentUser();
    if (user != null) {
      final member = await memberRepo.getMember(memberId);
      if (member == null) throw MemberNotFoundError();

      final userAsMember = await memberRepo.getUserAsMember(
          communityId: member.communityId, userId: user.id);
      if (userAsMember == null) {
        throw UserNotPermitError();
      }
      if (userAsMember.role == "member") {
        throw UserNotPermitError();
      }
      if (member.role == "admin" && member.id != userAsMember.id) {
        throw UserNotPermitError();
      }
      await memberRepo.remove(memberId);
    } else {
      throw UserNotFoundError();
    }
  }
}
