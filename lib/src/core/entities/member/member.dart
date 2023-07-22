import 'package:freezed_annotation/freezed_annotation.dart';
part 'member.freezed.dart';

@freezed
class Member with _$Member{
  const factory Member({
    required String id,
    required String phone,
    required String communityId,
    required String name,
    required MemberRole role,
    String? designation,
    String? profileImage,
  }) = _Member;
}

enum MemberRole {admin, member}