// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_create_dot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommunityCreateDTO _$CommunityCreateDTOFromJson(Map<String, dynamic> json) {
  return _CommunityCreateDTO.fromJson(json);
}

/// @nodoc
mixin _$CommunityCreateDTO {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommunityCreateDTOCopyWith<CommunityCreateDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityCreateDTOCopyWith<$Res> {
  factory $CommunityCreateDTOCopyWith(
          CommunityCreateDTO value, $Res Function(CommunityCreateDTO) then) =
      _$CommunityCreateDTOCopyWithImpl<$Res, CommunityCreateDTO>;
  @useResult
  $Res call(
      {String name,
      String? description,
      String? profileImage,
      String? coverImage});
}

/// @nodoc
class _$CommunityCreateDTOCopyWithImpl<$Res, $Val extends CommunityCreateDTO>
    implements $CommunityCreateDTOCopyWith<$Res> {
  _$CommunityCreateDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? profileImage = freezed,
    Object? coverImage = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_CommunityCreateDTOCopyWith<$Res>
    implements $CommunityCreateDTOCopyWith<$Res> {
  factory _$$_CommunityCreateDTOCopyWith(_$_CommunityCreateDTO value,
          $Res Function(_$_CommunityCreateDTO) then) =
      __$$_CommunityCreateDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? description,
      String? profileImage,
      String? coverImage});
}

/// @nodoc
class __$$_CommunityCreateDTOCopyWithImpl<$Res>
    extends _$CommunityCreateDTOCopyWithImpl<$Res, _$_CommunityCreateDTO>
    implements _$$_CommunityCreateDTOCopyWith<$Res> {
  __$$_CommunityCreateDTOCopyWithImpl(
      _$_CommunityCreateDTO _value, $Res Function(_$_CommunityCreateDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? profileImage = freezed,
    Object? coverImage = freezed,
  }) {
    return _then(_$_CommunityCreateDTO(
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
class _$_CommunityCreateDTO
    with DiagnosticableTreeMixin
    implements _CommunityCreateDTO {
  const _$_CommunityCreateDTO(
      {required this.name,
      this.description,
      this.profileImage,
      this.coverImage});

  factory _$_CommunityCreateDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CommunityCreateDTOFromJson(json);

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
    return 'CommunityCreateDTO(name: $name, description: $description, profileImage: $profileImage, coverImage: $coverImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommunityCreateDTO'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('profileImage', profileImage))
      ..add(DiagnosticsProperty('coverImage', coverImage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommunityCreateDTO &&
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
      Object.hash(runtimeType, name, description, profileImage, coverImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommunityCreateDTOCopyWith<_$_CommunityCreateDTO> get copyWith =>
      __$$_CommunityCreateDTOCopyWithImpl<_$_CommunityCreateDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommunityCreateDTOToJson(
      this,
    );
  }
}

abstract class _CommunityCreateDTO implements CommunityCreateDTO {
  const factory _CommunityCreateDTO(
      {required final String name,
      final String? description,
      final String? profileImage,
      final String? coverImage}) = _$_CommunityCreateDTO;

  factory _CommunityCreateDTO.fromJson(Map<String, dynamic> json) =
      _$_CommunityCreateDTO.fromJson;

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
  _$$_CommunityCreateDTOCopyWith<_$_CommunityCreateDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
