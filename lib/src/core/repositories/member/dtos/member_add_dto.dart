import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_add_dto.freezed.dart';
part 'member_add_dto.g.dart';

@freezed
class MemberAddDto with _$MemberAddDto {
  const factory MemberAddDto({
    required String phone,
    required String communityId,
    required String name,
    required String role,
    String? designation,
    String? profileImage,
  }) = _MemberAddDto;

  factory MemberAddDto.fromJson(Map<String, dynamic> json) =>
      _$MemberAddDtoFromJson(json);
}
