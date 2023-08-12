// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_read_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommunityReadDTO _$$_CommunityReadDTOFromJson(Map<String, dynamic> json) =>
    _$_CommunityReadDTO(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      profileImage: json['profileImage'] as String?,
      coverImage: json['coverImage'] as String?,
    );

Map<String, dynamic> _$$_CommunityReadDTOToJson(_$_CommunityReadDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'profileImage': instance.profileImage,
      'coverImage': instance.coverImage,
    };
