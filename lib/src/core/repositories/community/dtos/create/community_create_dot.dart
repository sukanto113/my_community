import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'community_create_dot.freezed.dart';
part 'community_create_dot.g.dart';

@freezed
class CommunityCreateDTO with _$CommunityCreateDTO {
  const factory CommunityCreateDTO({
    required String name,
    String? description,
    String? profileImage,
    String? coverImage,
  }) = _CommunityCreateDTO;

  factory CommunityCreateDTO.fromJson(Map<String, dynamic> json) =>
      _$CommunityCreateDTOFromJson(json);
}
