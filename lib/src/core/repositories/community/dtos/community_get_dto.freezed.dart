// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_get_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommunityGetDTO _$CommunityGetDTOFromJson(Map<String, dynamic> json) {
  return _CommunityGetDTO.fromJson(json);
}

/// @nodoc
mixin _$CommunityGetDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommunityGetDTOCopyWith<CommunityGetDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityGetDTOCopyWith<$Res> {
  factory $CommunityGetDTOCopyWith(
          CommunityGetDTO value, $Res Function(CommunityGetDTO) then) =
      _$CommunityGetDTOCopyWithImpl<$Res, CommunityGetDTO>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      String? profileImage,
      String? coverImage});
}

/// @nodoc
class _$CommunityGetDTOCopyWithImpl<$Res, $Val extends CommunityGetDTO>
    implements $CommunityGetDTOCopyWith<$Res> {
  _$CommunityGetDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$_CommunityGetDTOCopyWith<$Res>
    implements $CommunityGetDTOCopyWith<$Res> {
  factory _$$_CommunityGetDTOCopyWith(
          _$_CommunityGetDTO value, $Res Function(_$_CommunityGetDTO) then) =
      __$$_CommunityGetDTOCopyWithImpl<$Res>;
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
class __$$_CommunityGetDTOCopyWithImpl<$Res>
    extends _$CommunityGetDTOCopyWithImpl<$Res, _$_CommunityGetDTO>
    implements _$$_CommunityGetDTOCopyWith<$Res> {
  __$$_CommunityGetDTOCopyWithImpl(
      _$_CommunityGetDTO _value, $Res Function(_$_CommunityGetDTO) _then)
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
    return _then(_$_CommunityGetDTO(
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
class _$_CommunityGetDTO
    with DiagnosticableTreeMixin
    implements _CommunityGetDTO {
  const _$_CommunityGetDTO(
      {required this.id,
      required this.name,
      this.description,
      this.profileImage,
      this.coverImage});

  factory _$_CommunityGetDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CommunityGetDTOFromJson(json);

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
    return 'CommunityGetDTO(id: $id, name: $name, description: $description, profileImage: $profileImage, coverImage: $coverImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommunityGetDTO'))
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
            other is _$_CommunityGetDTO &&
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
  _$$_CommunityGetDTOCopyWith<_$_CommunityGetDTO> get copyWith =>
      __$$_CommunityGetDTOCopyWithImpl<_$_CommunityGetDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommunityGetDTOToJson(
      this,
    );
  }
}

abstract class _CommunityGetDTO implements CommunityGetDTO {
  const factory _CommunityGetDTO(
      {required final String id,
      required final String name,
      final String? description,
      final String? profileImage,
      final String? coverImage}) = _$_CommunityGetDTO;

  factory _CommunityGetDTO.fromJson(Map<String, dynamic> json) =
      _$_CommunityGetDTO.fromJson;

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
  _$$_CommunityGetDTOCopyWith<_$_CommunityGetDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
