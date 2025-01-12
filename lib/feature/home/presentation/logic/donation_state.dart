part of 'donation_cubit.dart';

@freezed
class DonationState with _$DonationState {
  const factory DonationState({
    @Default(false) bool isPaymentSuccess,
    @Default(false) bool isPaymentFailed,
    @Default('') String error,
    @Default(false) bool isLoading,
    @Default([]) List<ProductModel> products,
    @Default(PaymentMethod.esewa) PaymentMethod activePaymentMethod,
    @Default('') String transactionId,
  }) = _DonationState;
}
