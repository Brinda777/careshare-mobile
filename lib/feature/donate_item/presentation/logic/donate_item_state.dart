part of 'donate_item_cubit.dart';

@freezed
class DonateItemState with _$DonateItemState {
  const DonateItemState._();

  const factory DonateItemState({
    @Default(0) int selectedIndex,
    @Default(null) List<DonateItemModel>? cartItems,
    @Default(0.0) double totalAmount,
    @Default(PaymentMethod.esewa) PaymentMethod activePaymentMethod,
  }) = _DonateItemState;
}

enum PaymentMethod {
  esewa,
  khalti,
}
