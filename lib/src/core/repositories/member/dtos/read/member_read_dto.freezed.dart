// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_read_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemberReadDto _$MemberReadDtoFromJson(Map<String, dynamic> json) {
  return _MemberReadDto.fromJson(json);
}

/// @nodoc
mixin _$MemberReadDto {
  String get id => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get communityId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get designation => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberReadDtoCopyWith<MemberReadDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberReadDtoCopyWith<$Res> {
  factory $MemberReadDtoCopyWith(
          MemberReadDto value, $Res Function(MemberReadDto) then) =
      _$MemberReadDtoCopyWithImpl<$Res, MemberReadDto>;
  @useResult
  $Res call(
      {String id,
      String phone,
      String communityId,
      String name,
      String role,
      String? userId,
      String? designation,
      String? profileImage});
}

/// @nodoc
class _$MemberReadDtoCopyWithImpl<$Res, $Val extends MemberReadDto>
    implements $MemberReadDtoCopyWith<$Res> {
  _$MemberReadDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phone = null,
    Object? communityId = null,
    Object? name = null,
    Object? role = null,
    Object? userId = freezed,
    Object? designation = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      communityId: null == communityId
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemberReadDtoCopyWith<$Res>
    implements $MemberReadDtoCopyWith<$Res> {
  factory _$$_MemberReadDtoCopyWith(
          _$_MemberReadDto value, $Res Function(_$_MemberReadDto) then) =
      __$$_MemberReadDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String phone,
      String communityId,
      String name,
      String role,
      String? userId,
      String? designation,
      String? profileImage});
}

/// @nodoc
class __$$_MemberReadDtoCopyWithImpl<$Res>
    extends _$MemberReadDtoCopyWithImpl<$Res, _$_MemberReadDto>
    implements _$$_MemberReadDtoCopyWith<$Res> {
  __$$_MemberReadDtoCopyWithImpl(
      _$_MemberReadDto _value, $Res Function(_$_MemberReadDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phone = null,
    Object? communityId = null,
    Object? name = null,
    Object? role = null,
    Object? userId = freezed,
    Object? designation = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_$_MemberReadDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      communityId: null == communityId
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemberReadDto with DiagnosticableTreeMixin implements _MemberReadDto {
  const _$_MemberReadDto(
      {required this.id,
      required this.phone,
      required this.communityId,
      required this.name,
      required this.role,
      this.userId,
      this.designation,
      this.profileImage});

  factory _$_MemberReadDto.fromJson(Map<String, dynamic> json) =>
      _$$_MemberReadDtoFromJson(json);

  @override
  final String id;
  @override
  final String phone;
  @override
  final String communityId;
  @override
  final String name;
  @override
  final String role;
  @override
  final String? userId;
  @override
  final String? designation;
  @override
  final String? profileImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MemberReadDto(id: $id, phone: $phone, communityId: $communityId, name: $name, role: $role, userId: $userId, designation: $designation, profileImage: $profileImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MemberReadDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('communityId', communityId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('designation', designation))
      ..add(DiagnosticsProperty('profileImage', profileImage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberReadDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.communityId, communityId) ||
                other.communityId == communityId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, phone, communityId, name,
      role, userId, designation, profileImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemberReadDtoCopyWith<_$_MemberReadDto> get copyWith =>
      __$$_MemberReadDtoCopyWithImpl<_$_MemberReadDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberReadDtoToJson(
      this,
    );
  }
}

abstract class _MemberReadDto implements MemberReadDto {
  const factory _MemberReadDto(
      {required final String id,
      required final String phone,
      required final String communityId,
      required final String name,
      required final String role,
      final String? userId,
      final String? designation,
      final String? profileImage}) = _$_MemberReadDto;

  factory _MemberReadDto.fromJson(Map<String, dynamic> json) =
      _$_MemberReadDto.fromJson;

  @override
  String get id;
  @override
  String get phone;
  @override
  String get communityId;
  @override
  String get name;
  @override
  String get role;
  @override
  String? get userId;
  @override
  String? get designation;
  @override
  String? get profileImage;
  @override
  @JsonKey(ignore: true)
  _$$_MemberReadDtoCopyWith<_$_MemberReadDto> get copyWith =>
      throw _privateConstructorUsedError;
}
