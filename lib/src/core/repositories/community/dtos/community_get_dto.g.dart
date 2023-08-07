// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_get_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommunityGetDTO _$$_CommunityGetDTOFromJson(Map<String, dynamic> json) =>
    _$_CommunityGetDTO(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      profileImage: json['profileImage'] as String?,
      coverImage: json['coverImage'] as String?,
    );

Map<String, dynamic> _$$_CommunityGetDTOToJson(_$_CommunityGetDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'profileImage': instance.profileImage,
      'coverImage': instance.coverImage,
    };
