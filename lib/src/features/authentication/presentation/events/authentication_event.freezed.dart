// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        loginWithEmailPassword,
    required TResult Function() logout,
    required TResult Function() requestAuthState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithEmailPassword,
    TResult? Function()? logout,
    TResult? Function()? requestAuthState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithEmailPassword,
    TResult Function()? logout,
    TResult Function()? requestAuthState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginWithEmailPassword value)
        loginWithEmailPassword,
    required TResult Function(_Logout value) logout,
    required TResult Function(_RequestAuthState value) requestAuthState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginWithEmailPassword value)? loginWithEmailPassword,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_RequestAuthState value)? requestAuthState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginWithEmailPassword value)? loginWithEmailPassword,
    TResult Function(_Logout value)? logout,
    TResult Function(_RequestAuthState value)? requestAuthState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoginWithEmailPasswordCopyWith<$Res> {
  factory _$$_LoginWithEmailPasswordCopyWith(_$_LoginWithEmailPassword value,
          $Res Function(_$_LoginWithEmailPassword) then) =
      __$$_LoginWithEmailPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_LoginWithEmailPasswordCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$_LoginWithEmailPassword>
    implements _$$_LoginWithEmailPasswordCopyWith<$Res> {
  __$$_LoginWithEmailPasswordCopyWithImpl(_$_LoginWithEmailPassword _value,
      $Res Function(_$_LoginWithEmailPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_LoginWithEmailPassword(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginWithEmailPassword
    with DiagnosticableTreeMixin
    implements _LoginWithEmailPassword {
  const _$_LoginWithEmailPassword(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationEvent.loginWithEmailPassword(email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AuthenticationEvent.loginWithEmailPassword'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginWithEmailPassword &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginWithEmailPasswordCopyWith<_$_LoginWithEmailPassword> get copyWith =>
      __$$_LoginWithEmailPasswordCopyWithImpl<_$_LoginWithEmailPassword>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        loginWithEmailPassword,
    required TResult Function() logout,
    required TResult Function() requestAuthState,
  }) {
    return loginWithEmailPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithEmailPassword,
    TResult? Function()? logout,
    TResult? Function()? requestAuthState,
  }) {
    return loginWithEmailPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithEmailPassword,
    TResult Function()? logout,
    TResult Function()? requestAuthState,
    required TResult orElse(),
  }) {
    if (loginWithEmailPassword != null) {
      return loginWithEmailPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginWithEmailPassword value)
        loginWithEmailPassword,
    required TResult Function(_Logout value) logout,
    required TResult Function(_RequestAuthState value) requestAuthState,
  }) {
    return loginWithEmailPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginWithEmailPassword value)? loginWithEmailPassword,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_RequestAuthState value)? requestAuthState,
  }) {
    return loginWithEmailPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginWithEmailPassword value)? loginWithEmailPassword,
    TResult Function(_Logout value)? logout,
    TResult Function(_RequestAuthState value)? requestAuthState,
    required TResult orElse(),
  }) {
    if (loginWithEmailPassword != null) {
      return loginWithEmailPassword(this);
    }
    return orElse();
  }
}

abstract class _LoginWithEmailPassword implements AuthenticationEvent {
  const factory _LoginWithEmailPassword(
      {required final String email,
      required final String password}) = _$_LoginWithEmailPassword;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_LoginWithEmailPasswordCopyWith<_$_LoginWithEmailPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$_Logout>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Logout with DiagnosticableTreeMixin implements _Logout {
  const _$_Logout();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationEvent.logout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthenticationEvent.logout'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        loginWithEmailPassword,
    required TResult Function() logout,
    required TResult Function() requestAuthState,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithEmailPassword,
    TResult? Function()? logout,
    TResult? Function()? requestAuthState,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithEmailPassword,
    TResult Function()? logout,
    TResult Function()? requestAuthState,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginWithEmailPassword value)
        loginWithEmailPassword,
    required TResult Function(_Logout value) logout,
    required TResult Function(_RequestAuthState value) requestAuthState,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginWithEmailPassword value)? loginWithEmailPassword,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_RequestAuthState value)? requestAuthState,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginWithEmailPassword value)? loginWithEmailPassword,
    TResult Function(_Logout value)? logout,
    TResult Function(_RequestAuthState value)? requestAuthState,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthenticationEvent {
  const factory _Logout() = _$_Logout;
}

/// @nodoc
abstract class _$$_RequestAuthStateCopyWith<$Res> {
  factory _$$_RequestAuthStateCopyWith(
          _$_RequestAuthState value, $Res Function(_$_RequestAuthState) then) =
      __$$_RequestAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RequestAuthStateCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$_RequestAuthState>
    implements _$$_RequestAuthStateCopyWith<$Res> {
  __$$_RequestAuthStateCopyWithImpl(
      _$_RequestAuthState _value, $Res Function(_$_RequestAuthState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RequestAuthState
    with DiagnosticableTreeMixin
    implements _RequestAuthState {
  const _$_RequestAuthState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationEvent.requestAuthState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'AuthenticationEvent.requestAuthState'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RequestAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        loginWithEmailPassword,
    required TResult Function() logout,
    required TResult Function() requestAuthState,
  }) {
    return requestAuthState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithEmailPassword,
    TResult? Function()? logout,
    TResult? Function()? requestAuthState,
  }) {
    return requestAuthState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithEmailPassword,
    TResult Function()? logout,
    TResult Function()? requestAuthState,
    required TResult orElse(),
  }) {
    if (requestAuthState != null) {
      return requestAuthState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginWithEmailPassword value)
        loginWithEmailPassword,
    required TResult Function(_Logout value) logout,
    required TResult Function(_RequestAuthState value) requestAuthState,
  }) {
    return requestAuthState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginWithEmailPassword value)? loginWithEmailPassword,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_RequestAuthState value)? requestAuthState,
  }) {
    return requestAuthState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginWithEmailPassword value)? loginWithEmailPassword,
    TResult Function(_Logout value)? logout,
    TResult Function(_RequestAuthState value)? requestAuthState,
    required TResult orElse(),
  }) {
    if (requestAuthState != null) {
      return requestAuthState(this);
    }
    return orElse();
  }
}

abstract class _RequestAuthState implements AuthenticationEvent {
  const factory _RequestAuthState() = _$_RequestAuthState;
}
