import 'package:freezed_annotation/freezed_annotation.dart';

part 'e_sewa_success_entity.freezed.dart';
part 'e_sewa_success_entity.g.dart';

@freezed
class EsewaPaymentSuccessResponse with _$EsewaPaymentSuccessResponse {
  const factory EsewaPaymentSuccessResponse({
    required List<EsewaPaymentSuccessData> data,
  }) = _EsewaPaymentSuccessResponse;

  factory EsewaPaymentSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$EsewaPaymentSuccessResponseFromJson(json);
}

@freezed
class EsewaPaymentSuccessData with _$EsewaPaymentSuccessData {
  const factory EsewaPaymentSuccessData({
    required String productId,
    required String productName,
    required String totalAmount,
    required String code,
    required EsewaMessage message,
    required TransactionDetails transactionDetails,
    required String merchantName,
  }) = _EsewaPaymentSuccessData;

  factory EsewaPaymentSuccessData.fromJson(Map<String, dynamic> json) =>
      _$EsewaPaymentSuccessDataFromJson(json);
}

@freezed
class EsewaMessage with _$EsewaMessage {
  const factory EsewaMessage({
    required String technicalSuccessMessage,
    required String successMessage,
  }) = _EsewaMessage;

  factory EsewaMessage.fromJson(Map<String, dynamic> json) =>
      _$EsewaMessageFromJson(json);
}

@freezed
class TransactionDetails with _$TransactionDetails {
  const factory TransactionDetails({
    required String date,
    required String referenceId,
    required String status,
  }) = _TransactionDetails;

  factory TransactionDetails.fromJson(Map<String, dynamic> json) =>
      _$TransactionDetailsFromJson(json);
}
