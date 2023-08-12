// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_update_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommunityUpdateDTO _$CommunityUpdateDTOFromJson(Map<String, dynamic> json) {
  return _CommunityUpdateDTO.fromJson(json);
}

/// @nodoc
mixin _$CommunityUpdateDTO {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommunityUpdateDTOCopyWith<CommunityUpdateDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityUpdateDTOCopyWith<$Res> {
  factory $CommunityUpdateDTOCopyWith(
          CommunityUpdateDTO value, $Res Function(CommunityUpdateDTO) then) =
      _$CommunityUpdateDTOCopyWithImpl<$Res, CommunityUpdateDTO>;
  @useResult
  $Res call(
      {String id,
      String? name,
      String? description,
      String? profileImage,
      String? coverImage});
}

/// @nodoc
class _$CommunityUpdateDTOCopyWithImpl<$Res, $Val extends CommunityUpdateDTO>
    implements $CommunityUpdateDTOCopyWith<$Res> {
  _$CommunityUpdateDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? profileImage = freezed,
    Object? coverImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_CommunityUpdateDTOCopyWith<$Res>
    implements $CommunityUpdateDTOCopyWith<$Res> {
  factory _$$_CommunityUpdateDTOCopyWith(_$_CommunityUpdateDTO value,
          $Res Function(_$_CommunityUpdateDTO) then) =
      __$$_CommunityUpdateDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? name,
      String? description,
      String? profileImage,
      String? coverImage});
}

/// @nodoc
class __$$_CommunityUpdateDTOCopyWithImpl<$Res>
    extends _$CommunityUpdateDTOCopyWithImpl<$Res, _$_CommunityUpdateDTO>
    implements _$$_CommunityUpdateDTOCopyWith<$Res> {
  __$$_CommunityUpdateDTOCopyWithImpl(
      _$_CommunityUpdateDTO _value, $Res Function(_$_CommunityUpdateDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? profileImage = freezed,
    Object? coverImage = freezed,
  }) {
    return _then(_$_CommunityUpdateDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_CommunityUpdateDTO
    with DiagnosticableTreeMixin
    implements _CommunityUpdateDTO {
  const _$_CommunityUpdateDTO(
      {required this.id,
      this.name,
      this.description,
      this.profileImage,
      this.coverImage});

  factory _$_CommunityUpdateDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CommunityUpdateDTOFromJson(json);

  @override
  final String id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? profileImage;
  @override
  final String? coverImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommunityUpdateDTO(id: $id, name: $name, description: $description, profileImage: $profileImage, coverImage: $coverImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommunityUpdateDTO'))
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
            other is _$_CommunityUpdateDTO &&
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
  _$$_CommunityUpdateDTOCopyWith<_$_CommunityUpdateDTO> get copyWith =>
      __$$_CommunityUpdateDTOCopyWithImpl<_$_CommunityUpdateDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommunityUpdateDTOToJson(
      this,
    );
  }
}

abstract class _CommunityUpdateDTO implements CommunityUpdateDTO {
  const factory _CommunityUpdateDTO(
      {required final String id,
      final String? name,
      final String? description,
      final String? profileImage,
      final String? coverImage}) = _$_CommunityUpdateDTO;

  factory _CommunityUpdateDTO.fromJson(Map<String, dynamic> json) =
      _$_CommunityUpdateDTO.fromJson;

  @override
  String get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get profileImage;
  @override
  String? get coverImage;
  @override
  @JsonKey(ignore: true)
  _$$_CommunityUpdateDTOCopyWith<_$_CommunityUpdateDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
