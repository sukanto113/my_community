// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_create_dot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommunityCreateDTO _$$_CommunityCreateDTOFromJson(
        Map<String, dynamic> json) =>
    _$_CommunityCreateDTO(
      name: json['name'] as String,
      description: json['description'] as String?,
      profileImage: json['profileImage'] as String?,
      coverImage: json['coverImage'] as String?,
    );

Map<String, dynamic> _$$_CommunityCreateDTOToJson(
        _$_CommunityCreateDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'profileImage': instance.profileImage,
      'coverImage': instance.coverImage,
    };
