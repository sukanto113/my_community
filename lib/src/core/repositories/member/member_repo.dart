import '../../entities/member/member.dart';
import 'dtos/create/member_create_dto.dart';
import 'dtos/read/member_read_dto.dart';

abstract class IMemberRepo {
  Future<Iterable<MemberReadDto>> getMembers(String communityId);
  Future<String> addMember(MemberCreateDto dto);
  Future<MemberReadDto?> getCommunityMemberByUserId(
      {required String communityId, required String userId});
}
