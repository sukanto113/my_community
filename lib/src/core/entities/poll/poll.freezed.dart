// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poll.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Poll {
  String get id => throw _privateConstructorUsedError;
  String get communityId => throw _privateConstructorUsedError;
  Iterable<PollOption> get options => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PollCopyWith<Poll> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollCopyWith<$Res> {
  factory $PollCopyWith(Poll value, $Res Function(Poll) then) =
      _$PollCopyWithImpl<$Res, Poll>;
  @useResult
  $Res call({String id, String communityId, Iterable<PollOption> options});
}

/// @nodoc
class _$PollCopyWithImpl<$Res, $Val extends Poll>
    implements $PollCopyWith<$Res> {
  _$PollCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? communityId = null,
    Object? options = null,
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
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Iterable<PollOption>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PollCopyWith<$Res> implements $PollCopyWith<$Res> {
  factory _$$_PollCopyWith(_$_Poll value, $Res Function(_$_Poll) then) =
      __$$_PollCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String communityId, Iterable<PollOption> options});
}

/// @nodoc
class __$$_PollCopyWithImpl<$Res> extends _$PollCopyWithImpl<$Res, _$_Poll>
    implements _$$_PollCopyWith<$Res> {
  __$$_PollCopyWithImpl(_$_Poll _value, $Res Function(_$_Poll) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? communityId = null,
    Object? options = null,
  }) {
    return _then(_$_Poll(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      communityId: null == communityId
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Iterable<PollOption>,
    ));
  }
}

/// @nodoc

class _$_Poll implements _Poll {
  const _$_Poll(
      {required this.id, required this.communityId, required this.options});

  @override
  final String id;
  @override
  final String communityId;
  @override
  final Iterable<PollOption> options;

  @override
  String toString() {
    return 'Poll(id: $id, communityId: $communityId, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Poll &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.communityId, communityId) ||
                other.communityId == communityId) &&
            const DeepCollectionEquality().equals(other.options, options));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, communityId,
      const DeepCollectionEquality().hash(options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PollCopyWith<_$_Poll> get copyWith =>
      __$$_PollCopyWithImpl<_$_Poll>(this, _$identity);
}

abstract class _Poll implements Poll {
  const factory _Poll(
      {required final String id,
      required final String communityId,
      required final Iterable<PollOption> options}) = _$_Poll;

  @override
  String get id;
  @override
  String get communityId;
  @override
  Iterable<PollOption> get options;
  @override
  @JsonKey(ignore: true)
  _$$_PollCopyWith<_$_Poll> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PollOption {
  String get id => throw _privateConstructorUsedError;
  String get pollId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get totalVotes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PollOptionCopyWith<PollOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollOptionCopyWith<$Res> {
  factory $PollOptionCopyWith(
          PollOption value, $Res Function(PollOption) then) =
      _$PollOptionCopyWithImpl<$Res, PollOption>;
  @useResult
  $Res call({String id, String pollId, String title, int totalVotes});
}

/// @nodoc
class _$PollOptionCopyWithImpl<$Res, $Val extends PollOption>
    implements $PollOptionCopyWith<$Res> {
  _$PollOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pollId = null,
    Object? title = null,
    Object? totalVotes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pollId: null == pollId
          ? _value.pollId
          : pollId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      totalVotes: null == totalVotes
          ? _value.totalVotes
          : totalVotes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PollOptionCopyWith<$Res>
    implements $PollOptionCopyWith<$Res> {
  factory _$$_PollOptionCopyWith(
          _$_PollOption value, $Res Function(_$_PollOption) then) =
      __$$_PollOptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String pollId, String title, int totalVotes});
}

/// @nodoc
class __$$_PollOptionCopyWithImpl<$Res>
    extends _$PollOptionCopyWithImpl<$Res, _$_PollOption>
    implements _$$_PollOptionCopyWith<$Res> {
  __$$_PollOptionCopyWithImpl(
      _$_PollOption _value, $Res Function(_$_PollOption) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pollId = null,
    Object? title = null,
    Object? totalVotes = null,
  }) {
    return _then(_$_PollOption(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pollId: null == pollId
          ? _value.pollId
          : pollId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      totalVotes: null == totalVotes
          ? _value.totalVotes
          : totalVotes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PollOption implements _PollOption {
  const _$_PollOption(
      {required this.id,
      required this.pollId,
      required this.title,
      required this.totalVotes});

  @override
  final String id;
  @override
  final String pollId;
  @override
  final String title;
  @override
  final int totalVotes;

  @override
  String toString() {
    return 'PollOption(id: $id, pollId: $pollId, title: $title, totalVotes: $totalVotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PollOption &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pollId, pollId) || other.pollId == pollId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.totalVotes, totalVotes) ||
                other.totalVotes == totalVotes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, pollId, title, totalVotes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PollOptionCopyWith<_$_PollOption> get copyWith =>
      __$$_PollOptionCopyWithImpl<_$_PollOption>(this, _$identity);
}

abstract class _PollOption implements PollOption {
  const factory _PollOption(
      {required final String id,
      required final String pollId,
      required final String title,
      required final int totalVotes}) = _$_PollOption;

  @override
  String get id;
  @override
  String get pollId;
  @override
  String get title;
  @override
  int get totalVotes;
  @override
  @JsonKey(ignore: true)
  _$$_PollOptionCopyWith<_$_PollOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PollVote {
  String get id => throw _privateConstructorUsedError;
  String get pollOptionId => throw _privateConstructorUsedError;
  String get memberId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PollVoteCopyWith<PollVote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollVoteCopyWith<$Res> {
  factory $PollVoteCopyWith(PollVote value, $Res Function(PollVote) then) =
      _$PollVoteCopyWithImpl<$Res, PollVote>;
  @useResult
  $Res call({String id, String pollOptionId, String memberId});
}

/// @nodoc
class _$PollVoteCopyWithImpl<$Res, $Val extends PollVote>
    implements $PollVoteCopyWith<$Res> {
  _$PollVoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pollOptionId = null,
    Object? memberId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pollOptionId: null == pollOptionId
          ? _value.pollOptionId
          : pollOptionId // ignore: cast_nullable_to_non_nullable
              as String,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PollVoteCopyWith<$Res> implements $PollVoteCopyWith<$Res> {
  factory _$$_PollVoteCopyWith(
          _$_PollVote value, $Res Function(_$_PollVote) then) =
      __$$_PollVoteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String pollOptionId, String memberId});
}

/// @nodoc
class __$$_PollVoteCopyWithImpl<$Res>
    extends _$PollVoteCopyWithImpl<$Res, _$_PollVote>
    implements _$$_PollVoteCopyWith<$Res> {
  __$$_PollVoteCopyWithImpl(
      _$_PollVote _value, $Res Function(_$_PollVote) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pollOptionId = null,
    Object? memberId = null,
  }) {
    return _then(_$_PollVote(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pollOptionId: null == pollOptionId
          ? _value.pollOptionId
          : pollOptionId // ignore: cast_nullable_to_non_nullable
              as String,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PollVote implements _PollVote {
  const _$_PollVote(
      {required this.id, required this.pollOptionId, required this.memberId});

  @override
  final String id;
  @override
  final String pollOptionId;
  @override
  final String memberId;

  @override
  String toString() {
    return 'PollVote(id: $id, pollOptionId: $pollOptionId, memberId: $memberId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PollVote &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pollOptionId, pollOptionId) ||
                other.pollOptionId == pollOptionId) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, pollOptionId, memberId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PollVoteCopyWith<_$_PollVote> get copyWith =>
      __$$_PollVoteCopyWithImpl<_$_PollVote>(this, _$identity);
}

abstract class _PollVote implements PollVote {
  const factory _PollVote(
      {required final String id,
      required final String pollOptionId,
      required final String memberId}) = _$_PollVote;

  @override
  String get id;
  @override
  String get pollOptionId;
  @override
  String get memberId;
  @override
  @JsonKey(ignore: true)
  _$$_PollVoteCopyWith<_$_PollVote> get copyWith =>
      throw _privateConstructorUsedError;
}
