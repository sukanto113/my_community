// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_update_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemberUpdateDto _$MemberUpdateDtoFromJson(Map<String, dynamic> json) {
  return _MemberUpdateDto.fromJson(json);
}

/// @nodoc
mixin _$MemberUpdateDto {
  String get id => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get designation => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberUpdateDtoCopyWith<MemberUpdateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberUpdateDtoCopyWith<$Res> {
  factory $MemberUpdateDtoCopyWith(
          MemberUpdateDto value, $Res Function(MemberUpdateDto) then) =
      _$MemberUpdateDtoCopyWithImpl<$Res, MemberUpdateDto>;
  @useResult
  $Res call(
      {String id,
      String? phone,
      String? name,
      String? designation,
      String? profileImage});
}

/// @nodoc
class _$MemberUpdateDtoCopyWithImpl<$Res, $Val extends MemberUpdateDto>
    implements $MemberUpdateDtoCopyWith<$Res> {
  _$MemberUpdateDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phone = freezed,
    Object? name = freezed,
    Object? designation = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_MemberUpdateDtoCopyWith<$Res>
    implements $MemberUpdateDtoCopyWith<$Res> {
  factory _$$_MemberUpdateDtoCopyWith(
          _$_MemberUpdateDto value, $Res Function(_$_MemberUpdateDto) then) =
      __$$_MemberUpdateDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? phone,
      String? name,
      String? designation,
      String? profileImage});
}

/// @nodoc
class __$$_MemberUpdateDtoCopyWithImpl<$Res>
    extends _$MemberUpdateDtoCopyWithImpl<$Res, _$_MemberUpdateDto>
    implements _$$_MemberUpdateDtoCopyWith<$Res> {
  __$$_MemberUpdateDtoCopyWithImpl(
      _$_MemberUpdateDto _value, $Res Function(_$_MemberUpdateDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phone = freezed,
    Object? name = freezed,
    Object? designation = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_$_MemberUpdateDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$_MemberUpdateDto
    with DiagnosticableTreeMixin
    implements _MemberUpdateDto {
  const _$_MemberUpdateDto(
      {required this.id,
      this.phone,
      this.name,
      this.designation,
      this.profileImage});

  factory _$_MemberUpdateDto.fromJson(Map<String, dynamic> json) =>
      _$$_MemberUpdateDtoFromJson(json);

  @override
  final String id;
  @override
  final String? phone;
  @override
  final String? name;
  @override
  final String? designation;
  @override
  final String? profileImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MemberUpdateDto(id: $id, phone: $phone, name: $name, designation: $designation, profileImage: $profileImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MemberUpdateDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('designation', designation))
      ..add(DiagnosticsProperty('profileImage', profileImage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberUpdateDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, phone, name, designation, profileImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemberUpdateDtoCopyWith<_$_MemberUpdateDto> get copyWith =>
      __$$_MemberUpdateDtoCopyWithImpl<_$_MemberUpdateDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberUpdateDtoToJson(
      this,
    );
  }
}

abstract class _MemberUpdateDto implements MemberUpdateDto {
  const factory _MemberUpdateDto(
      {required final String id,
      final String? phone,
      final String? name,
      final String? designation,
      final String? profileImage}) = _$_MemberUpdateDto;

  factory _MemberUpdateDto.fromJson(Map<String, dynamic> json) =
      _$_MemberUpdateDto.fromJson;

  @override
  String get id;
  @override
  String? get phone;
  @override
  String? get name;
  @override
  String? get designation;
  @override
  String? get profileImage;
  @override
  @JsonKey(ignore: true)
  _$$_MemberUpdateDtoCopyWith<_$_MemberUpdateDto> get copyWith =>
      throw _privateConstructorUsedError;
}
