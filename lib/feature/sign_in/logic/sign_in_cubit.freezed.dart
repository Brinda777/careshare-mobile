// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInState {
  PhoneNumberFormz get phoneNumber => throw _privateConstructorUsedError;
  PasswordFormz get password => throw _privateConstructorUsedError;
  bool get isPasswordObscure => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<ProductModel> get products => throw _privateConstructorUsedError;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call(
      {PhoneNumberFormz phoneNumber,
      PasswordFormz password,
      bool isPasswordObscure,
      String error,
      bool isLoading,
      List<ProductModel> products});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? password = null,
    Object? isPasswordObscure = null,
    Object? error = null,
    Object? isLoading = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumberFormz,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordFormz,
      isPasswordObscure: null == isPasswordObscure
          ? _value.isPasswordObscure
          : isPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInStateImplCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$SignInStateImplCopyWith(
          _$SignInStateImpl value, $Res Function(_$SignInStateImpl) then) =
      __$$SignInStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PhoneNumberFormz phoneNumber,
      PasswordFormz password,
      bool isPasswordObscure,
      String error,
      bool isLoading,
      List<ProductModel> products});
}

/// @nodoc
class __$$SignInStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStateImpl>
    implements _$$SignInStateImplCopyWith<$Res> {
  __$$SignInStateImplCopyWithImpl(
      _$SignInStateImpl _value, $Res Function(_$SignInStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? password = null,
    Object? isPasswordObscure = null,
    Object? error = null,
    Object? isLoading = null,
    Object? products = null,
  }) {
    return _then(_$SignInStateImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumberFormz,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordFormz,
      isPasswordObscure: null == isPasswordObscure
          ? _value.isPasswordObscure
          : isPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$SignInStateImpl implements _SignInState {
  const _$SignInStateImpl(
      {this.phoneNumber = const PhoneNumberFormz.pure(),
      this.password = const PasswordFormz.pure(),
      this.isPasswordObscure = true,
      this.error = '',
      this.isLoading = false,
      final List<ProductModel> products = const []})
      : _products = products;

  @override
  @JsonKey()
  final PhoneNumberFormz phoneNumber;
  @override
  @JsonKey()
  final PasswordFormz password;
  @override
  @JsonKey()
  final bool isPasswordObscure;
  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final bool isLoading;
  final List<ProductModel> _products;
  @override
  @JsonKey()
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'SignInState(phoneNumber: $phoneNumber, password: $password, isPasswordObscure: $isPasswordObscure, error: $error, isLoading: $isLoading, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isPasswordObscure, isPasswordObscure) ||
                other.isPasswordObscure == isPasswordObscure) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      phoneNumber,
      password,
      isPasswordObscure,
      error,
      isLoading,
      const DeepCollectionEquality().hash(_products));

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      __$$SignInStateImplCopyWithImpl<_$SignInStateImpl>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
      {final PhoneNumberFormz phoneNumber,
      final PasswordFormz password,
      final bool isPasswordObscure,
      final String error,
      final bool isLoading,
      final List<ProductModel> products}) = _$SignInStateImpl;

  @override
  PhoneNumberFormz get phoneNumber;
  @override
  PasswordFormz get password;
  @override
  bool get isPasswordObscure;
  @override
  String get error;
  @override
  bool get isLoading;
  @override
  List<ProductModel> get products;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
