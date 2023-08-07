// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_update_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommunityUpdateDTO _$$_CommunityUpdateDTOFromJson(
        Map<String, dynamic> json) =>
    _$_CommunityUpdateDTO(
      id: json['id'] as String,
      name: json['name'] as String?,
      description: json['description'] as String?,
      profileImage: json['profileImage'] as String?,
      coverImage: json['coverImage'] as String?,
    );

Map<String, dynamic> _$$_CommunityUpdateDTOToJson(
        _$_CommunityUpdateDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'profileImage': instance.profileImage,
      'coverImage': instance.coverImage,
    };
