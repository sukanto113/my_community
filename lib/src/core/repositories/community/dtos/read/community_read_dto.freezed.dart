// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_read_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommunityReadDTO _$CommunityReadDTOFromJson(Map<String, dynamic> json) {
  return _CommunityReadDTO.fromJson(json);
}

/// @nodoc
mixin _$CommunityReadDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommunityReadDTOCopyWith<CommunityReadDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityReadDTOCopyWith<$Res> {
  factory $CommunityReadDTOCopyWith(
          CommunityReadDTO value, $Res Function(CommunityReadDTO) then) =
      _$CommunityReadDTOCopyWithImpl<$Res, CommunityReadDTO>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      String? profileImage,
      String? coverImage});
}

/// @nodoc
class _$CommunityReadDTOCopyWithImpl<$Res, $Val extends CommunityReadDTO>
    implements $CommunityReadDTOCopyWith<$Res> {
  _$CommunityReadDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? profileImage = freezed,
    Object? coverImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommunityReadDTOCopyWith<$Res>
    implements $CommunityReadDTOCopyWith<$Res> {
  factory _$$_CommunityReadDTOCopyWith(
          _$_CommunityReadDTO value, $Res Function(_$_CommunityReadDTO) then) =
      __$$_CommunityReadDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      String? profileImage,
      String? coverImage});
}

/// @nodoc
class __$$_CommunityReadDTOCopyWithImpl<$Res>
    extends _$CommunityReadDTOCopyWithImpl<$Res, _$_CommunityReadDTO>
    implements _$$_CommunityReadDTOCopyWith<$Res> {
  __$$_CommunityReadDTOCopyWithImpl(
      _$_CommunityReadDTO _value, $Res Function(_$_CommunityReadDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? profileImage = freezed,
    Object? coverImage = freezed,
  }) {
    return _then(_$_CommunityReadDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommunityReadDTO
    with DiagnosticableTreeMixin
    implements _CommunityReadDTO {
  const _$_CommunityReadDTO(
      {required this.id,
      required this.name,
      this.description,
      this.profileImage,
      this.coverImage});

  factory _$_CommunityReadDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CommunityReadDTOFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? profileImage;
  @override
  final String? coverImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommunityReadDTO(id: $id, name: $name, description: $description, profileImage: $profileImage, coverImage: $coverImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommunityReadDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('profileImage', profileImage))
      ..add(DiagnosticsProperty('coverImage', coverImage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommunityReadDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, profileImage, coverImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommunityReadDTOCopyWith<_$_CommunityReadDTO> get copyWith =>
      __$$_CommunityReadDTOCopyWithImpl<_$_CommunityReadDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommunityReadDTOToJson(
      this,
    );
  }
}

abstract class _CommunityReadDTO implements CommunityReadDTO {
  const factory _CommunityReadDTO(
      {required final String id,
      required final String name,
      final String? description,
      final String? profileImage,
      final String? coverImage}) = _$_CommunityReadDTO;

  factory _CommunityReadDTO.fromJson(Map<String, dynamic> json) =
      _$_CommunityReadDTO.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  String? get profileImage;
  @override
  String? get coverImage;
  @override
  @JsonKey(ignore: true)
  _$$_CommunityReadDTOCopyWith<_$_CommunityReadDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
