// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donate_item_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DonateItemState {
  int get selectedIndex => throw _privateConstructorUsedError;
  List<DonateItemModel>? get cartItems => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  PaymentMethod get activePaymentMethod => throw _privateConstructorUsedError;

  /// Create a copy of DonateItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DonateItemStateCopyWith<DonateItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonateItemStateCopyWith<$Res> {
  factory $DonateItemStateCopyWith(
          DonateItemState value, $Res Function(DonateItemState) then) =
      _$DonateItemStateCopyWithImpl<$Res, DonateItemState>;
  @useResult
  $Res call(
      {int selectedIndex,
      List<DonateItemModel>? cartItems,
      double totalAmount,
      PaymentMethod activePaymentMethod});
}

/// @nodoc
class _$DonateItemStateCopyWithImpl<$Res, $Val extends DonateItemState>
    implements $DonateItemStateCopyWith<$Res> {
  _$DonateItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DonateItemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? cartItems = freezed,
    Object? totalAmount = null,
    Object? activePaymentMethod = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      cartItems: freezed == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<DonateItemModel>?,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      activePaymentMethod: null == activePaymentMethod
          ? _value.activePaymentMethod
          : activePaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DonateItemStateImplCopyWith<$Res>
    implements $DonateItemStateCopyWith<$Res> {
  factory _$$DonateItemStateImplCopyWith(_$DonateItemStateImpl value,
          $Res Function(_$DonateItemStateImpl) then) =
      __$$DonateItemStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int selectedIndex,
      List<DonateItemModel>? cartItems,
      double totalAmount,
      PaymentMethod activePaymentMethod});
}

/// @nodoc
class __$$DonateItemStateImplCopyWithImpl<$Res>
    extends _$DonateItemStateCopyWithImpl<$Res, _$DonateItemStateImpl>
    implements _$$DonateItemStateImplCopyWith<$Res> {
  __$$DonateItemStateImplCopyWithImpl(
      _$DonateItemStateImpl _value, $Res Function(_$DonateItemStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DonateItemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? cartItems = freezed,
    Object? totalAmount = null,
    Object? activePaymentMethod = null,
  }) {
    return _then(_$DonateItemStateImpl(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      cartItems: freezed == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<DonateItemModel>?,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      activePaymentMethod: null == activePaymentMethod
          ? _value.activePaymentMethod
          : activePaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
    ));
  }
}

/// @nodoc

class _$DonateItemStateImpl extends _DonateItemState {
  const _$DonateItemStateImpl(
      {this.selectedIndex = 0,
      final List<DonateItemModel>? cartItems = null,
      this.totalAmount = 0.0,
      this.activePaymentMethod = PaymentMethod.esewa})
      : _cartItems = cartItems,
        super._();

  @override
  @JsonKey()
  final int selectedIndex;
  final List<DonateItemModel>? _cartItems;
  @override
  @JsonKey()
  List<DonateItemModel>? get cartItems {
    final value = _cartItems;
    if (value == null) return null;
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final double totalAmount;
  @override
  @JsonKey()
  final PaymentMethod activePaymentMethod;

  @override
  String toString() {
    return 'DonateItemState(selectedIndex: $selectedIndex, cartItems: $cartItems, totalAmount: $totalAmount, activePaymentMethod: $activePaymentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonateItemStateImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.activePaymentMethod, activePaymentMethod) ||
                other.activePaymentMethod == activePaymentMethod));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedIndex,
      const DeepCollectionEquality().hash(_cartItems),
      totalAmount,
      activePaymentMethod);

  /// Create a copy of DonateItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DonateItemStateImplCopyWith<_$DonateItemStateImpl> get copyWith =>
      __$$DonateItemStateImplCopyWithImpl<_$DonateItemStateImpl>(
          this, _$identity);
}

abstract class _DonateItemState extends DonateItemState {
  const factory _DonateItemState(
      {final int selectedIndex,
      final List<DonateItemModel>? cartItems,
      final double totalAmount,
      final PaymentMethod activePaymentMethod}) = _$DonateItemStateImpl;
  const _DonateItemState._() : super._();

  @override
  int get selectedIndex;
  @override
  List<DonateItemModel>? get cartItems;
  @override
  double get totalAmount;
  @override
  PaymentMethod get activePaymentMethod;

  /// Create a copy of DonateItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DonateItemStateImplCopyWith<_$DonateItemStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
