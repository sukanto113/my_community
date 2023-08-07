import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'community_update_dto.freezed.dart';
part 'community_update_dto.g.dart';

@freezed
class CommunityUpdateDTO with _$CommunityUpdateDTO {
  const factory CommunityUpdateDTO({
    required String id,
    String? name,
    String? description,
    String? profileImage,
    String? coverImage,
  }) = _CommunityUpdateDTO;

  factory CommunityUpdateDTO.fromJson(Map<String, dynamic> json) =>
      _$CommunityUpdateDTOFromJson(json);
}
