
import '../../utils/errors.dart';
import 'dtos/read/member_read_dto.dart';
import 'member_repo.dart';

extension MemberRepoExtension on IMemberRepo {
  Future<MemberReadDto?> getUserAsMember(
      {required String communityId, required String userId}) async {
    final userAsMemberId = await getCommunityMemberIdByUserId(
      communityId: communityId,
      userId: userId,
    );
    if (userAsMemberId == null) throw UserNotPermitError();
    final userAsMember = await getMember(userAsMemberId);
    return userAsMember;
  }
}