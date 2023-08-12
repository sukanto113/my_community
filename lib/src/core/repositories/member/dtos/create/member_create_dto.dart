import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_create_dto.freezed.dart';
part 'member_create_dto.g.dart';

@freezed
class MemberCreateDto with _$MemberCreateDto {
  const factory MemberCreateDto({
    required String phone,
    required String communityId,
    required String name,
    required String role,
    String? designation,
    String? profileImage,
  }) = _MemberAddDto;

  factory MemberCreateDto.fromJson(Map<String, dynamic> json) =>
      _$MemberCreateDtoFromJson(json);
}
