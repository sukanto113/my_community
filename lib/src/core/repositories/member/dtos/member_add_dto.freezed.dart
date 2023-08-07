// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_add_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemberAddDto _$MemberAddDtoFromJson(Map<String, dynamic> json) {
  return _MemberAddDto.fromJson(json);
}

/// @nodoc
mixin _$MemberAddDto {
  String get phone => throw _privateConstructorUsedError;
  String get communityId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String? get designation => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberAddDtoCopyWith<MemberAddDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberAddDtoCopyWith<$Res> {
  factory $MemberAddDtoCopyWith(
          MemberAddDto value, $Res Function(MemberAddDto) then) =
      _$MemberAddDtoCopyWithImpl<$Res, MemberAddDto>;
  @useResult
  $Res call(
      {String phone,
      String communityId,
      String name,
      String role,
      String? designation,
      String? profileImage});
}

/// @nodoc
class _$MemberAddDtoCopyWithImpl<$Res, $Val extends MemberAddDto>
    implements $MemberAddDtoCopyWith<$Res> {
  _$MemberAddDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? communityId = null,
    Object? name = null,
    Object? role = null,
    Object? designation = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_MemberAddDtoCopyWith<$Res>
    implements $MemberAddDtoCopyWith<$Res> {
  factory _$$_MemberAddDtoCopyWith(
          _$_MemberAddDto value, $Res Function(_$_MemberAddDto) then) =
      __$$_MemberAddDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String phone,
      String communityId,
      String name,
      String role,
      String? designation,
      String? profileImage});
}

/// @nodoc
class __$$_MemberAddDtoCopyWithImpl<$Res>
    extends _$MemberAddDtoCopyWithImpl<$Res, _$_MemberAddDto>
    implements _$$_MemberAddDtoCopyWith<$Res> {
  __$$_MemberAddDtoCopyWithImpl(
      _$_MemberAddDto _value, $Res Function(_$_MemberAddDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? communityId = null,
    Object? name = null,
    Object? role = null,
    Object? designation = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_$_MemberAddDto(
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
class _$_MemberAddDto with DiagnosticableTreeMixin implements _MemberAddDto {
  const _$_MemberAddDto(
      {required this.phone,
      required this.communityId,
      required this.name,
      required this.role,
      this.designation,
      this.profileImage});

  factory _$_MemberAddDto.fromJson(Map<String, dynamic> json) =>
      _$$_MemberAddDtoFromJson(json);

  @override
  final String phone;
  @override
  final String communityId;
  @override
  final String name;
  @override
  final String role;
  @override
  final String? designation;
  @override
  final String? profileImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MemberAddDto(phone: $phone, communityId: $communityId, name: $name, role: $role, designation: $designation, profileImage: $profileImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MemberAddDto'))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('communityId', communityId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('designation', designation))
      ..add(DiagnosticsProperty('profileImage', profileImage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberAddDto &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.communityId, communityId) ||
                other.communityId == communityId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, phone, communityId, name, role, designation, profileImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemberAddDtoCopyWith<_$_MemberAddDto> get copyWith =>
      __$$_MemberAddDtoCopyWithImpl<_$_MemberAddDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberAddDtoToJson(
      this,
    );
  }
}

abstract class _MemberAddDto implements MemberAddDto {
  const factory _MemberAddDto(
      {required final String phone,
      required final String communityId,
      required final String name,
      required final String role,
      final String? designation,
      final String? profileImage}) = _$_MemberAddDto;

  factory _MemberAddDto.fromJson(Map<String, dynamic> json) =
      _$_MemberAddDto.fromJson;

  @override
  String get phone;
  @override
  String get communityId;
  @override
  String get name;
  @override
  String get role;
  @override
  String? get designation;
  @override
  String? get profileImage;
  @override
  @JsonKey(ignore: true)
  _$$_MemberAddDtoCopyWith<_$_MemberAddDto> get copyWith =>
      throw _privateConstructorUsedError;
}
