// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentTag {
  String get id => throw _privateConstructorUsedError;
  String get communityId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentTagCopyWith<PaymentTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentTagCopyWith<$Res> {
  factory $PaymentTagCopyWith(
          PaymentTag value, $Res Function(PaymentTag) then) =
      _$PaymentTagCopyWithImpl<$Res, PaymentTag>;
  @useResult
  $Res call({String id, String communityId, String name});
}

/// @nodoc
class _$PaymentTagCopyWithImpl<$Res, $Val extends PaymentTag>
    implements $PaymentTagCopyWith<$Res> {
  _$PaymentTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? communityId = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      communityId: null == communityId
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentTagCopyWith<$Res>
    implements $PaymentTagCopyWith<$Res> {
  factory _$$_PaymentTagCopyWith(
          _$_PaymentTag value, $Res Function(_$_PaymentTag) then) =
      __$$_PaymentTagCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String communityId, String name});
}

/// @nodoc
class __$$_PaymentTagCopyWithImpl<$Res>
    extends _$PaymentTagCopyWithImpl<$Res, _$_PaymentTag>
    implements _$$_PaymentTagCopyWith<$Res> {
  __$$_PaymentTagCopyWithImpl(
      _$_PaymentTag _value, $Res Function(_$_PaymentTag) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? communityId = null,
    Object? name = null,
  }) {
    return _then(_$_PaymentTag(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      communityId: null == communityId
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PaymentTag implements _PaymentTag {
  const _$_PaymentTag(
      {required this.id, required this.communityId, required this.name});

  @override
  final String id;
  @override
  final String communityId;
  @override
  final String name;

  @override
  String toString() {
    return 'PaymentTag(id: $id, communityId: $communityId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentTag &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.communityId, communityId) ||
                other.communityId == communityId) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, communityId, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentTagCopyWith<_$_PaymentTag> get copyWith =>
      __$$_PaymentTagCopyWithImpl<_$_PaymentTag>(this, _$identity);
}

abstract class _PaymentTag implements PaymentTag {
  const factory _PaymentTag(
      {required final String id,
      required final String communityId,
      required final String name}) = _$_PaymentTag;

  @override
  String get id;
  @override
  String get communityId;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentTagCopyWith<_$_PaymentTag> get copyWith =>
      throw _privateConstructorUsedError;
}
