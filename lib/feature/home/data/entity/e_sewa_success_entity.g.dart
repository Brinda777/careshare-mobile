// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'e_sewa_success_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EsewaPaymentSuccessResponseImpl _$$EsewaPaymentSuccessResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EsewaPaymentSuccessResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              EsewaPaymentSuccessData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EsewaPaymentSuccessResponseImplToJson(
        _$EsewaPaymentSuccessResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$EsewaPaymentSuccessDataImpl _$$EsewaPaymentSuccessDataImplFromJson(
        Map<String, dynamic> json) =>
    _$EsewaPaymentSuccessDataImpl(
      productId: json['productId'] as String,
      productName: json['productName'] as String,
      totalAmount: json['totalAmount'] as String,
      code: json['code'] as String,
      message: EsewaMessage.fromJson(json['message'] as Map<String, dynamic>),
      transactionDetails: TransactionDetails.fromJson(
          json['transactionDetails'] as Map<String, dynamic>),
      merchantName: json['merchantName'] as String,
    );

Map<String, dynamic> _$$EsewaPaymentSuccessDataImplToJson(
        _$EsewaPaymentSuccessDataImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'productName': instance.productName,
      'totalAmount': instance.totalAmount,
      'code': instance.code,
      'message': instance.message,
      'transactionDetails': instance.transactionDetails,
      'merchantName': instance.merchantName,
    };

_$EsewaMessageImpl _$$EsewaMessageImplFromJson(Map<String, dynamic> json) =>
    _$EsewaMessageImpl(
      technicalSuccessMessage: json['technicalSuccessMessage'] as String,
      successMessage: json['successMessage'] as String,
    );

Map<String, dynamic> _$$EsewaMessageImplToJson(_$EsewaMessageImpl instance) =>
    <String, dynamic>{
      'technicalSuccessMessage': instance.technicalSuccessMessage,
      'successMessage': instance.successMessage,
    };

_$TransactionDetailsImpl _$$TransactionDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionDetailsImpl(
      date: json['date'] as String,
      referenceId: json['referenceId'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$TransactionDetailsImplToJson(
        _$TransactionDetailsImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'referenceId': instance.referenceId,
      'status': instance.status,
    };
