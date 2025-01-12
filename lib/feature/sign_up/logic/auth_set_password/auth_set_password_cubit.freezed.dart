// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_set_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthSetPasswordState {
  PasswordFormz get password => throw _privateConstructorUsedError;
  ConfirmedPasswordFormz get confirmPassword =>
      throw _privateConstructorUsedError;
  bool get isPasswordObscure => throw _privateConstructorUsedError;
  bool get isConfirmPasswordObscure => throw _privateConstructorUsedError;

  /// Create a copy of AuthSetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthSetPasswordStateCopyWith<AuthSetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthSetPasswordStateCopyWith<$Res> {
  factory $AuthSetPasswordStateCopyWith(AuthSetPasswordState value,
          $Res Function(AuthSetPasswordState) then) =
      _$AuthSetPasswordStateCopyWithImpl<$Res, AuthSetPasswordState>;
  @useResult
  $Res call(
      {PasswordFormz password,
      ConfirmedPasswordFormz confirmPassword,
      bool isPasswordObscure,
      bool isConfirmPasswordObscure});
}

/// @nodoc
class _$AuthSetPasswordStateCopyWithImpl<$Res,
        $Val extends AuthSetPasswordState>
    implements $AuthSetPasswordStateCopyWith<$Res> {
  _$AuthSetPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthSetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? confirmPassword = null,
    Object? isPasswordObscure = null,
    Object? isConfirmPasswordObscure = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordFormz,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPasswordFormz,
      isPasswordObscure: null == isPasswordObscure
          ? _value.isPasswordObscure
          : isPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPasswordObscure: null == isConfirmPasswordObscure
          ? _value.isConfirmPasswordObscure
          : isConfirmPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthSetPasswordStateImplCopyWith<$Res>
    implements $AuthSetPasswordStateCopyWith<$Res> {
  factory _$$AuthSetPasswordStateImplCopyWith(_$AuthSetPasswordStateImpl value,
          $Res Function(_$AuthSetPasswordStateImpl) then) =
      __$$AuthSetPasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PasswordFormz password,
      ConfirmedPasswordFormz confirmPassword,
      bool isPasswordObscure,
      bool isConfirmPasswordObscure});
}

/// @nodoc
class __$$AuthSetPasswordStateImplCopyWithImpl<$Res>
    extends _$AuthSetPasswordStateCopyWithImpl<$Res, _$AuthSetPasswordStateImpl>
    implements _$$AuthSetPasswordStateImplCopyWith<$Res> {
  __$$AuthSetPasswordStateImplCopyWithImpl(_$AuthSetPasswordStateImpl _value,
      $Res Function(_$AuthSetPasswordStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthSetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? confirmPassword = null,
    Object? isPasswordObscure = null,
    Object? isConfirmPasswordObscure = null,
  }) {
    return _then(_$AuthSetPasswordStateImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordFormz,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPasswordFormz,
      isPasswordObscure: null == isPasswordObscure
          ? _value.isPasswordObscure
          : isPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPasswordObscure: null == isConfirmPasswordObscure
          ? _value.isConfirmPasswordObscure
          : isConfirmPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthSetPasswordStateImpl extends _AuthSetPasswordState {
  const _$AuthSetPasswordStateImpl(
      {this.password = const PasswordFormz.pure(),
      this.confirmPassword = const ConfirmedPasswordFormz.pure(),
      this.isPasswordObscure = true,
      this.isConfirmPasswordObscure = true})
      : super._();

  @override
  @JsonKey()
  final PasswordFormz password;
  @override
  @JsonKey()
  final ConfirmedPasswordFormz confirmPassword;
  @override
  @JsonKey()
  final bool isPasswordObscure;
  @override
  @JsonKey()
  final bool isConfirmPasswordObscure;

  @override
  String toString() {
    return 'AuthSetPasswordState(password: $password, confirmPassword: $confirmPassword, isPasswordObscure: $isPasswordObscure, isConfirmPasswordObscure: $isConfirmPasswordObscure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSetPasswordStateImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.isPasswordObscure, isPasswordObscure) ||
                other.isPasswordObscure == isPasswordObscure) &&
            (identical(
                    other.isConfirmPasswordObscure, isConfirmPasswordObscure) ||
                other.isConfirmPasswordObscure == isConfirmPasswordObscure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, confirmPassword,
      isPasswordObscure, isConfirmPasswordObscure);

  /// Create a copy of AuthSetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSetPasswordStateImplCopyWith<_$AuthSetPasswordStateImpl>
      get copyWith =>
          __$$AuthSetPasswordStateImplCopyWithImpl<_$AuthSetPasswordStateImpl>(
              this, _$identity);
}

abstract class _AuthSetPasswordState extends AuthSetPasswordState {
  const factory _AuthSetPasswordState(
      {final PasswordFormz password,
      final ConfirmedPasswordFormz confirmPassword,
      final bool isPasswordObscure,
      final bool isConfirmPasswordObscure}) = _$AuthSetPasswordStateImpl;
  const _AuthSetPasswordState._() : super._();

  @override
  PasswordFormz get password;
  @override
  ConfirmedPasswordFormz get confirmPassword;
  @override
  bool get isPasswordObscure;
  @override
  bool get isConfirmPasswordObscure;

  /// Create a copy of AuthSetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthSetPasswordStateImplCopyWith<_$AuthSetPasswordStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
