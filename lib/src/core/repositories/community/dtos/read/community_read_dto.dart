import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'community_read_dto.freezed.dart';
part 'community_read_dto.g.dart';

@freezed
class CommunityReadDTO with _$CommunityReadDTO {
  const factory CommunityReadDTO({
    required String id,
    required String name,
    String? description,
    String? profileImage,
    String? coverImage,
  }) = _CommunityReadDTO;

  factory CommunityReadDTO.fromJson(Map<String, dynamic> json) =>
      _$CommunityReadDTOFromJson(json);
}
