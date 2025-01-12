// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DonationState {
  bool get isPaymentSuccess => throw _privateConstructorUsedError;
  bool get isPaymentFailed => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<ProductModel> get products => throw _privateConstructorUsedError;
  PaymentMethod get activePaymentMethod => throw _privateConstructorUsedError;
  String get transactionId => throw _privateConstructorUsedError;

  /// Create a copy of DonationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DonationStateCopyWith<DonationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonationStateCopyWith<$Res> {
  factory $DonationStateCopyWith(
          DonationState value, $Res Function(DonationState) then) =
      _$DonationStateCopyWithImpl<$Res, DonationState>;
  @useResult
  $Res call(
      {bool isPaymentSuccess,
      bool isPaymentFailed,
      String error,
      bool isLoading,
      List<ProductModel> products,
      PaymentMethod activePaymentMethod,
      String transactionId});
}

/// @nodoc
class _$DonationStateCopyWithImpl<$Res, $Val extends DonationState>
    implements $DonationStateCopyWith<$Res> {
  _$DonationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DonationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPaymentSuccess = null,
    Object? isPaymentFailed = null,
    Object? error = null,
    Object? isLoading = null,
    Object? products = null,
    Object? activePaymentMethod = null,
    Object? transactionId = null,
  }) {
    return _then(_value.copyWith(
      isPaymentSuccess: null == isPaymentSuccess
          ? _value.isPaymentSuccess
          : isPaymentSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaymentFailed: null == isPaymentFailed
          ? _value.isPaymentFailed
          : isPaymentFailed // ignore: cast_nullable_to_non_nullable
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
      activePaymentMethod: null == activePaymentMethod
          ? _value.activePaymentMethod
          : activePaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DonationStateImplCopyWith<$Res>
    implements $DonationStateCopyWith<$Res> {
  factory _$$DonationStateImplCopyWith(
          _$DonationStateImpl value, $Res Function(_$DonationStateImpl) then) =
      __$$DonationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isPaymentSuccess,
      bool isPaymentFailed,
      String error,
      bool isLoading,
      List<ProductModel> products,
      PaymentMethod activePaymentMethod,
      String transactionId});
}

/// @nodoc
class __$$DonationStateImplCopyWithImpl<$Res>
    extends _$DonationStateCopyWithImpl<$Res, _$DonationStateImpl>
    implements _$$DonationStateImplCopyWith<$Res> {
  __$$DonationStateImplCopyWithImpl(
      _$DonationStateImpl _value, $Res Function(_$DonationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DonationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPaymentSuccess = null,
    Object? isPaymentFailed = null,
    Object? error = null,
    Object? isLoading = null,
    Object? products = null,
    Object? activePaymentMethod = null,
    Object? transactionId = null,
  }) {
    return _then(_$DonationStateImpl(
      isPaymentSuccess: null == isPaymentSuccess
          ? _value.isPaymentSuccess
          : isPaymentSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaymentFailed: null == isPaymentFailed
          ? _value.isPaymentFailed
          : isPaymentFailed // ignore: cast_nullable_to_non_nullable
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
      activePaymentMethod: null == activePaymentMethod
          ? _value.activePaymentMethod
          : activePaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DonationStateImpl implements _DonationState {
  const _$DonationStateImpl(
      {this.isPaymentSuccess = false,
      this.isPaymentFailed = false,
      this.error = '',
      this.isLoading = false,
      final List<ProductModel> products = const [],
      this.activePaymentMethod = PaymentMethod.esewa,
      this.transactionId = ''})
      : _products = products;

  @override
  @JsonKey()
  final bool isPaymentSuccess;
  @override
  @JsonKey()
  final bool isPaymentFailed;
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
  @JsonKey()
  final PaymentMethod activePaymentMethod;
  @override
  @JsonKey()
  final String transactionId;

  @override
  String toString() {
    return 'DonationState(isPaymentSuccess: $isPaymentSuccess, isPaymentFailed: $isPaymentFailed, error: $error, isLoading: $isLoading, products: $products, activePaymentMethod: $activePaymentMethod, transactionId: $transactionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonationStateImpl &&
            (identical(other.isPaymentSuccess, isPaymentSuccess) ||
                other.isPaymentSuccess == isPaymentSuccess) &&
            (identical(other.isPaymentFailed, isPaymentFailed) ||
                other.isPaymentFailed == isPaymentFailed) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.activePaymentMethod, activePaymentMethod) ||
                other.activePaymentMethod == activePaymentMethod) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isPaymentSuccess,
      isPaymentFailed,
      error,
      isLoading,
      const DeepCollectionEquality().hash(_products),
      activePaymentMethod,
      transactionId);

  /// Create a copy of DonationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DonationStateImplCopyWith<_$DonationStateImpl> get copyWith =>
      __$$DonationStateImplCopyWithImpl<_$DonationStateImpl>(this, _$identity);
}

abstract class _DonationState implements DonationState {
  const factory _DonationState(
      {final bool isPaymentSuccess,
      final bool isPaymentFailed,
      final String error,
      final bool isLoading,
      final List<ProductModel> products,
      final PaymentMethod activePaymentMethod,
      final String transactionId}) = _$DonationStateImpl;

  @override
  bool get isPaymentSuccess;
  @override
  bool get isPaymentFailed;
  @override
  String get error;
  @override
  bool get isLoading;
  @override
  List<ProductModel> get products;
  @override
  PaymentMethod get activePaymentMethod;
  @override
  String get transactionId;

  /// Create a copy of DonationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DonationStateImplCopyWith<_$DonationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
