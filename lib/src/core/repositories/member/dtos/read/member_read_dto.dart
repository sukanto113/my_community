import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'member_read_dto.freezed.dart';
part 'member_read_dto.g.dart';

@freezed
class MemberReadDto with _$MemberReadDto {
  const factory MemberReadDto({
    required String id,
    required String phone,
    required String communityId,
    required String name,
    required String role,
    String? userId,
    String? designation,
    String? profileImage,
  }) = _MemberReadDto;

  factory MemberReadDto.fromJson(Map<String, dynamic> json) =>
      _$MemberReadDtoFromJson(json);
}
