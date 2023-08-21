// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_read_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemberReadDto _$$_MemberReadDtoFromJson(Map<String, dynamic> json) =>
    _$_MemberReadDto(
      id: json['id'] as String,
      phone: json['phone'] as String,
      communityId: json['communityId'] as String,
      name: json['name'] as String,
      role: json['role'] as String,
      userId: json['userId'] as String?,
      designation: json['designation'] as String?,
      profileImage: json['profileImage'] as String?,
    );

Map<String, dynamic> _$$_MemberReadDtoToJson(_$_MemberReadDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'communityId': instance.communityId,
      'name': instance.name,
      'role': instance.role,
      'userId': instance.userId,
      'designation': instance.designation,
      'profileImage': instance.profileImage,
    };
