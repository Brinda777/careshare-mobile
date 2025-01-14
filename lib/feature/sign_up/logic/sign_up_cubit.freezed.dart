// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpState {
  FullNameFormz get fullName => throw _privateConstructorUsedError;
  PhoneNumberFormz get phoneNumber => throw _privateConstructorUsedError;
  EmailFormz get email => throw _privateConstructorUsedError;
  PasswordFormz get password => throw _privateConstructorUsedError;
  ConfirmedPasswordFormz get confirmPassword =>
      throw _privateConstructorUsedError;
  bool get isRegisterSuccess => throw _privateConstructorUsedError;
  bool get isRegisterLoading => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool get showVisibilityIcon => throw _privateConstructorUsedError;
  bool get isPasswordObscure => throw _privateConstructorUsedError;
  bool get isConfirmPasswordObscure => throw _privateConstructorUsedError;
  bool get isLoginLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  AuthResponseModel? get authResponse => throw _privateConstructorUsedError;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {FullNameFormz fullName,
      PhoneNumberFormz phoneNumber,
      EmailFormz email,
      PasswordFormz password,
      ConfirmedPasswordFormz confirmPassword,
      bool isRegisterSuccess,
      bool isRegisterLoading,
      String? message,
      bool showVisibilityIcon,
      bool isPasswordObscure,
      bool isConfirmPasswordObscure,
      bool isLoginLoading,
      String? error,
      AuthResponseModel? authResponse});

  $AuthResponseModelCopyWith<$Res>? get authResponse;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? isRegisterSuccess = null,
    Object? isRegisterLoading = null,
    Object? message = freezed,
    Object? showVisibilityIcon = null,
    Object? isPasswordObscure = null,
    Object? isConfirmPasswordObscure = null,
    Object? isLoginLoading = null,
    Object? error = freezed,
    Object? authResponse = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullNameFormz,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumberFormz,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailFormz,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordFormz,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPasswordFormz,
      isRegisterSuccess: null == isRegisterSuccess
          ? _value.isRegisterSuccess
          : isRegisterSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isRegisterLoading: null == isRegisterLoading
          ? _value.isRegisterLoading
          : isRegisterLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      showVisibilityIcon: null == showVisibilityIcon
          ? _value.showVisibilityIcon
          : showVisibilityIcon // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordObscure: null == isPasswordObscure
          ? _value.isPasswordObscure
          : isPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPasswordObscure: null == isConfirmPasswordObscure
          ? _value.isConfirmPasswordObscure
          : isConfirmPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginLoading: null == isLoginLoading
          ? _value.isLoginLoading
          : isLoginLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      authResponse: freezed == authResponse
          ? _value.authResponse
          : authResponse // ignore: cast_nullable_to_non_nullable
              as AuthResponseModel?,
    ) as $Val);
  }

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthResponseModelCopyWith<$Res>? get authResponse {
    if (_value.authResponse == null) {
      return null;
    }

    return $AuthResponseModelCopyWith<$Res>(_value.authResponse!, (value) {
      return _then(_value.copyWith(authResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignUpStateImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateImplCopyWith(
          _$SignUpStateImpl value, $Res Function(_$SignUpStateImpl) then) =
      __$$SignUpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FullNameFormz fullName,
      PhoneNumberFormz phoneNumber,
      EmailFormz email,
      PasswordFormz password,
      ConfirmedPasswordFormz confirmPassword,
      bool isRegisterSuccess,
      bool isRegisterLoading,
      String? message,
      bool showVisibilityIcon,
      bool isPasswordObscure,
      bool isConfirmPasswordObscure,
      bool isLoginLoading,
      String? error,
      AuthResponseModel? authResponse});

  @override
  $AuthResponseModelCopyWith<$Res>? get authResponse;
}

/// @nodoc
class __$$SignUpStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateImpl>
    implements _$$SignUpStateImplCopyWith<$Res> {
  __$$SignUpStateImplCopyWithImpl(
      _$SignUpStateImpl _value, $Res Function(_$SignUpStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? isRegisterSuccess = null,
    Object? isRegisterLoading = null,
    Object? message = freezed,
    Object? showVisibilityIcon = null,
    Object? isPasswordObscure = null,
    Object? isConfirmPasswordObscure = null,
    Object? isLoginLoading = null,
    Object? error = freezed,
    Object? authResponse = freezed,
  }) {
    return _then(_$SignUpStateImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullNameFormz,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumberFormz,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailFormz,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordFormz,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPasswordFormz,
      isRegisterSuccess: null == isRegisterSuccess
          ? _value.isRegisterSuccess
          : isRegisterSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isRegisterLoading: null == isRegisterLoading
          ? _value.isRegisterLoading
          : isRegisterLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      showVisibilityIcon: null == showVisibilityIcon
          ? _value.showVisibilityIcon
          : showVisibilityIcon // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordObscure: null == isPasswordObscure
          ? _value.isPasswordObscure
          : isPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPasswordObscure: null == isConfirmPasswordObscure
          ? _value.isConfirmPasswordObscure
          : isConfirmPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginLoading: null == isLoginLoading
          ? _value.isLoginLoading
          : isLoginLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      authResponse: freezed == authResponse
          ? _value.authResponse
          : authResponse // ignore: cast_nullable_to_non_nullable
              as AuthResponseModel?,
    ));
  }
}

/// @nodoc

class _$SignUpStateImpl with DiagnosticableTreeMixin implements _SignUpState {
  const _$SignUpStateImpl(
      {this.fullName = const FullNameFormz.pure(),
      this.phoneNumber = const PhoneNumberFormz.pure(),
      this.email = const EmailFormz.pure(),
      this.password = const PasswordFormz.pure(),
      this.confirmPassword = const ConfirmedPasswordFormz.pure(),
      this.isRegisterSuccess = false,
      this.isRegisterLoading = false,
      this.message = '',
      this.showVisibilityIcon = false,
      this.isPasswordObscure = false,
      this.isConfirmPasswordObscure = false,
      this.isLoginLoading = false,
      this.error = '',
      this.authResponse = null});

  @override
  @JsonKey()
  final FullNameFormz fullName;
  @override
  @JsonKey()
  final PhoneNumberFormz phoneNumber;
  @override
  @JsonKey()
  final EmailFormz email;
  @override
  @JsonKey()
  final PasswordFormz password;
  @override
  @JsonKey()
  final ConfirmedPasswordFormz confirmPassword;
  @override
  @JsonKey()
  final bool isRegisterSuccess;
  @override
  @JsonKey()
  final bool isRegisterLoading;
  @override
  @JsonKey()
  final String? message;
  @override
  @JsonKey()
  final bool showVisibilityIcon;
  @override
  @JsonKey()
  final bool isPasswordObscure;
  @override
  @JsonKey()
  final bool isConfirmPasswordObscure;
  @override
  @JsonKey()
  final bool isLoginLoading;
  @override
  @JsonKey()
  final String? error;
  @override
  @JsonKey()
  final AuthResponseModel? authResponse;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState(fullName: $fullName, phoneNumber: $phoneNumber, email: $email, password: $password, confirmPassword: $confirmPassword, isRegisterSuccess: $isRegisterSuccess, isRegisterLoading: $isRegisterLoading, message: $message, showVisibilityIcon: $showVisibilityIcon, isPasswordObscure: $isPasswordObscure, isConfirmPasswordObscure: $isConfirmPasswordObscure, isLoginLoading: $isLoginLoading, error: $error, authResponse: $authResponse)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpState'))
      ..add(DiagnosticsProperty('fullName', fullName))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('confirmPassword', confirmPassword))
      ..add(DiagnosticsProperty('isRegisterSuccess', isRegisterSuccess))
      ..add(DiagnosticsProperty('isRegisterLoading', isRegisterLoading))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('showVisibilityIcon', showVisibilityIcon))
      ..add(DiagnosticsProperty('isPasswordObscure', isPasswordObscure))
      ..add(DiagnosticsProperty(
          'isConfirmPasswordObscure', isConfirmPasswordObscure))
      ..add(DiagnosticsProperty('isLoginLoading', isLoginLoading))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('authResponse', authResponse));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.isRegisterSuccess, isRegisterSuccess) ||
                other.isRegisterSuccess == isRegisterSuccess) &&
            (identical(other.isRegisterLoading, isRegisterLoading) ||
                other.isRegisterLoading == isRegisterLoading) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.showVisibilityIcon, showVisibilityIcon) ||
                other.showVisibilityIcon == showVisibilityIcon) &&
            (identical(other.isPasswordObscure, isPasswordObscure) ||
                other.isPasswordObscure == isPasswordObscure) &&
            (identical(
                    other.isConfirmPasswordObscure, isConfirmPasswordObscure) ||
                other.isConfirmPasswordObscure == isConfirmPasswordObscure) &&
            (identical(other.isLoginLoading, isLoginLoading) ||
                other.isLoginLoading == isLoginLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.authResponse, authResponse) ||
                other.authResponse == authResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      fullName,
      phoneNumber,
      email,
      password,
      confirmPassword,
      isRegisterSuccess,
      isRegisterLoading,
      message,
      showVisibilityIcon,
      isPasswordObscure,
      isConfirmPasswordObscure,
      isLoginLoading,
      error,
      authResponse);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      __$$SignUpStateImplCopyWithImpl<_$SignUpStateImpl>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
      {final FullNameFormz fullName,
      final PhoneNumberFormz phoneNumber,
      final EmailFormz email,
      final PasswordFormz password,
      final ConfirmedPasswordFormz confirmPassword,
      final bool isRegisterSuccess,
      final bool isRegisterLoading,
      final String? message,
      final bool showVisibilityIcon,
      final bool isPasswordObscure,
      final bool isConfirmPasswordObscure,
      final bool isLoginLoading,
      final String? error,
      final AuthResponseModel? authResponse}) = _$SignUpStateImpl;

  @override
  FullNameFormz get fullName;
  @override
  PhoneNumberFormz get phoneNumber;
  @override
  EmailFormz get email;
  @override
  PasswordFormz get password;
  @override
  ConfirmedPasswordFormz get confirmPassword;
  @override
  bool get isRegisterSuccess;
  @override
  bool get isRegisterLoading;
  @override
  String? get message;
  @override
  bool get showVisibilityIcon;
  @override
  bool get isPasswordObscure;
  @override
  bool get isConfirmPasswordObscure;
  @override
  bool get isLoginLoading;
  @override
  String? get error;
  @override
  AuthResponseModel? get authResponse;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
