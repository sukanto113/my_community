// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_create_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemberAddDto _$$_MemberAddDtoFromJson(Map<String, dynamic> json) =>
    _$_MemberAddDto(
      phone: json['phone'] as String,
      communityId: json['communityId'] as String,
      name: json['name'] as String,
      role: json['role'] as String,
      userId: json['userId'] as String?,
      designation: json['designation'] as String?,
      profileImage: json['profileImage'] as String?,
    );

Map<String, dynamic> _$$_MemberAddDtoToJson(_$_MemberAddDto instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'communityId': instance.communityId,
      'name': instance.name,
      'role': instance.role,
      'userId': instance.userId,
      'designation': instance.designation,
      'profileImage': instance.profileImage,
    };
