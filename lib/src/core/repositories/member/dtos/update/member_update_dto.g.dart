// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_update_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemberUpdateDto _$$_MemberUpdateDtoFromJson(Map<String, dynamic> json) =>
    _$_MemberUpdateDto(
      id: json['id'] as String,
      phone: json['phone'] as String?,
      name: json['name'] as String?,
      designation: json['designation'] as String?,
      profileImage: json['profileImage'] as String?,
    );

Map<String, dynamic> _$$_MemberUpdateDtoToJson(_$_MemberUpdateDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'name': instance.name,
      'designation': instance.designation,
      'profileImage': instance.profileImage,
    };
