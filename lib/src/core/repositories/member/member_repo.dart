import '../../entities/member/member.dart';
import 'dtos/create/member_create_dto.dart';

abstract class IMemberRepo {
  Future<Iterable<Member>> getMembers(String communityId);
  Future<String> addMember(MemberCreateDto dto);
}
