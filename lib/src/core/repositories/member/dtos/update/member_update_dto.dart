import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_update_dto.freezed.dart';
part 'member_update_dto.g.dart';

@freezed
class MemberUpdateDto with _$MemberUpdateDto{
  const factory MemberUpdateDto({
    required String id,
    String? phone,
    String? name,
    String? designation,
    String? profileImage,
  }) = _MemberUpdateDto;

  factory MemberUpdateDto.fromJson(Map<String, dynamic> json) => _$MemberUpdateDtoFromJson(json);
}