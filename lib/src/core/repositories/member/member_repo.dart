import 'package:my_community/src/core/repositories/member/dtos/member_add_dto.dart';

import '../../entities/member/member.dart';

abstract class IMemberRepo {
  Future<Iterable<Member>> getMembers(String communityId);
  Future<String> addMember(MemberAddDto dto);
}
