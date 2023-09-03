import 'package:my_community/src/core/repositories/member/dtos/update/member_update_dto.dart';

import '../../entities/member/member.dart';
import 'dtos/create/member_create_dto.dart';
import 'dtos/read/member_read_dto.dart';

abstract class IMemberRepo {
  Future<MemberReadDto> getMember(String memberId);
  Future<Iterable<MemberReadDto>> getMembers(String communityId);
  Future<String> addMember(MemberCreateDto dto);
  Future<MemberReadDto?> getCommunityMemberByUserId(
      {required String communityId, required String userId});
  Future<void> update(MemberUpdateDto dto);
}
