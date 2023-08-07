import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'community_get_dto.freezed.dart';
part 'community_get_dto.g.dart';

@freezed
class CommunityGetDTO with _$CommunityGetDTO {
  const factory CommunityGetDTO({
    required String id,
    required String name,
    String? description,
    String? profileImage,
    String? coverImage,
  }) = _CommunityGetDTO;

  factory CommunityGetDTO.fromJson(Map<String, dynamic> json) =>
      _$CommunityGetDTOFromJson(json);
}
