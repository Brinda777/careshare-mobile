// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'e_sewa_success_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EsewaPaymentSuccessResponse _$EsewaPaymentSuccessResponseFromJson(
    Map<String, dynamic> json) {
  return _EsewaPaymentSuccessResponse.fromJson(json);
}

/// @nodoc
mixin _$EsewaPaymentSuccessResponse {
  List<EsewaPaymentSuccessData> get data => throw _privateConstructorUsedError;

  /// Serializes this EsewaPaymentSuccessResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EsewaPaymentSuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EsewaPaymentSuccessResponseCopyWith<EsewaPaymentSuccessResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EsewaPaymentSuccessResponseCopyWith<$Res> {
  factory $EsewaPaymentSuccessResponseCopyWith(
          EsewaPaymentSuccessResponse value,
          $Res Function(EsewaPaymentSuccessResponse) then) =
      _$EsewaPaymentSuccessResponseCopyWithImpl<$Res,
          EsewaPaymentSuccessResponse>;
  @useResult
  $Res call({List<EsewaPaymentSuccessData> data});
}

/// @nodoc
class _$EsewaPaymentSuccessResponseCopyWithImpl<$Res,
        $Val extends EsewaPaymentSuccessResponse>
    implements $EsewaPaymentSuccessResponseCopyWith<$Res> {
  _$EsewaPaymentSuccessResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EsewaPaymentSuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<EsewaPaymentSuccessData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EsewaPaymentSuccessResponseImplCopyWith<$Res>
    implements $EsewaPaymentSuccessResponseCopyWith<$Res> {
  factory _$$EsewaPaymentSuccessResponseImplCopyWith(
          _$EsewaPaymentSuccessResponseImpl value,
          $Res Function(_$EsewaPaymentSuccessResponseImpl) then) =
      __$$EsewaPaymentSuccessResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EsewaPaymentSuccessData> data});
}

/// @nodoc
class __$$EsewaPaymentSuccessResponseImplCopyWithImpl<$Res>
    extends _$EsewaPaymentSuccessResponseCopyWithImpl<$Res,
        _$EsewaPaymentSuccessResponseImpl>
    implements _$$EsewaPaymentSuccessResponseImplCopyWith<$Res> {
  __$$EsewaPaymentSuccessResponseImplCopyWithImpl(
      _$EsewaPaymentSuccessResponseImpl _value,
      $Res Function(_$EsewaPaymentSuccessResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of EsewaPaymentSuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$EsewaPaymentSuccessResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<EsewaPaymentSuccessData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EsewaPaymentSuccessResponseImpl
    implements _EsewaPaymentSuccessResponse {
  const _$EsewaPaymentSuccessResponseImpl(
      {required final List<EsewaPaymentSuccessData> data})
      : _data = data;

  factory _$EsewaPaymentSuccessResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EsewaPaymentSuccessResponseImplFromJson(json);

  final List<EsewaPaymentSuccessData> _data;
  @override
  List<EsewaPaymentSuccessData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'EsewaPaymentSuccessResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EsewaPaymentSuccessResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of EsewaPaymentSuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EsewaPaymentSuccessResponseImplCopyWith<_$EsewaPaymentSuccessResponseImpl>
      get copyWith => __$$EsewaPaymentSuccessResponseImplCopyWithImpl<
          _$EsewaPaymentSuccessResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EsewaPaymentSuccessResponseImplToJson(
      this,
    );
  }
}

abstract class _EsewaPaymentSuccessResponse
    implements EsewaPaymentSuccessResponse {
  const factory _EsewaPaymentSuccessResponse(
          {required final List<EsewaPaymentSuccessData> data}) =
      _$EsewaPaymentSuccessResponseImpl;

  factory _EsewaPaymentSuccessResponse.fromJson(Map<String, dynamic> json) =
      _$EsewaPaymentSuccessResponseImpl.fromJson;

  @override
  List<EsewaPaymentSuccessData> get data;

  /// Create a copy of EsewaPaymentSuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EsewaPaymentSuccessResponseImplCopyWith<_$EsewaPaymentSuccessResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EsewaPaymentSuccessData _$EsewaPaymentSuccessDataFromJson(
    Map<String, dynamic> json) {
  return _EsewaPaymentSuccessData.fromJson(json);
}

/// @nodoc
mixin _$EsewaPaymentSuccessData {
  String get productId => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get totalAmount => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  EsewaMessage get message => throw _privateConstructorUsedError;
  TransactionDetails get transactionDetails =>
      throw _privateConstructorUsedError;
  String get merchantName => throw _privateConstructorUsedError;

  /// Serializes this EsewaPaymentSuccessData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EsewaPaymentSuccessData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EsewaPaymentSuccessDataCopyWith<EsewaPaymentSuccessData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EsewaPaymentSuccessDataCopyWith<$Res> {
  factory $EsewaPaymentSuccessDataCopyWith(EsewaPaymentSuccessData value,
          $Res Function(EsewaPaymentSuccessData) then) =
      _$EsewaPaymentSuccessDataCopyWithImpl<$Res, EsewaPaymentSuccessData>;
  @useResult
  $Res call(
      {String productId,
      String productName,
      String totalAmount,
      String code,
      EsewaMessage message,
      TransactionDetails transactionDetails,
      String merchantName});

  $EsewaMessageCopyWith<$Res> get message;
  $TransactionDetailsCopyWith<$Res> get transactionDetails;
}

/// @nodoc
class _$EsewaPaymentSuccessDataCopyWithImpl<$Res,
        $Val extends EsewaPaymentSuccessData>
    implements $EsewaPaymentSuccessDataCopyWith<$Res> {
  _$EsewaPaymentSuccessDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EsewaPaymentSuccessData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productName = null,
    Object? totalAmount = null,
    Object? code = null,
    Object? message = null,
    Object? transactionDetails = null,
    Object? merchantName = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as EsewaMessage,
      transactionDetails: null == transactionDetails
          ? _value.transactionDetails
          : transactionDetails // ignore: cast_nullable_to_non_nullable
              as TransactionDetails,
      merchantName: null == merchantName
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of EsewaPaymentSuccessData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EsewaMessageCopyWith<$Res> get message {
    return $EsewaMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }

  /// Create a copy of EsewaPaymentSuccessData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionDetailsCopyWith<$Res> get transactionDetails {
    return $TransactionDetailsCopyWith<$Res>(_value.transactionDetails,
        (value) {
      return _then(_value.copyWith(transactionDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EsewaPaymentSuccessDataImplCopyWith<$Res>
    implements $EsewaPaymentSuccessDataCopyWith<$Res> {
  factory _$$EsewaPaymentSuccessDataImplCopyWith(
          _$EsewaPaymentSuccessDataImpl value,
          $Res Function(_$EsewaPaymentSuccessDataImpl) then) =
      __$$EsewaPaymentSuccessDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productId,
      String productName,
      String totalAmount,
      String code,
      EsewaMessage message,
      TransactionDetails transactionDetails,
      String merchantName});

  @override
  $EsewaMessageCopyWith<$Res> get message;
  @override
  $TransactionDetailsCopyWith<$Res> get transactionDetails;
}

/// @nodoc
class __$$EsewaPaymentSuccessDataImplCopyWithImpl<$Res>
    extends _$EsewaPaymentSuccessDataCopyWithImpl<$Res,
        _$EsewaPaymentSuccessDataImpl>
    implements _$$EsewaPaymentSuccessDataImplCopyWith<$Res> {
  __$$EsewaPaymentSuccessDataImplCopyWithImpl(
      _$EsewaPaymentSuccessDataImpl _value,
      $Res Function(_$EsewaPaymentSuccessDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of EsewaPaymentSuccessData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productName = null,
    Object? totalAmount = null,
    Object? code = null,
    Object? message = null,
    Object? transactionDetails = null,
    Object? merchantName = null,
  }) {
    return _then(_$EsewaPaymentSuccessDataImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as EsewaMessage,
      transactionDetails: null == transactionDetails
          ? _value.transactionDetails
          : transactionDetails // ignore: cast_nullable_to_non_nullable
              as TransactionDetails,
      merchantName: null == merchantName
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EsewaPaymentSuccessDataImpl implements _EsewaPaymentSuccessData {
  const _$EsewaPaymentSuccessDataImpl(
      {required this.productId,
      required this.productName,
      required this.totalAmount,
      required this.code,
      required this.message,
      required this.transactionDetails,
      required this.merchantName});

  factory _$EsewaPaymentSuccessDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$EsewaPaymentSuccessDataImplFromJson(json);

  @override
  final String productId;
  @override
  final String productName;
  @override
  final String totalAmount;
  @override
  final String code;
  @override
  final EsewaMessage message;
  @override
  final TransactionDetails transactionDetails;
  @override
  final String merchantName;

  @override
  String toString() {
    return 'EsewaPaymentSuccessData(productId: $productId, productName: $productName, totalAmount: $totalAmount, code: $code, message: $message, transactionDetails: $transactionDetails, merchantName: $merchantName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EsewaPaymentSuccessDataImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.transactionDetails, transactionDetails) ||
                other.transactionDetails == transactionDetails) &&
            (identical(other.merchantName, merchantName) ||
                other.merchantName == merchantName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productId, productName,
      totalAmount, code, message, transactionDetails, merchantName);

  /// Create a copy of EsewaPaymentSuccessData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EsewaPaymentSuccessDataImplCopyWith<_$EsewaPaymentSuccessDataImpl>
      get copyWith => __$$EsewaPaymentSuccessDataImplCopyWithImpl<
          _$EsewaPaymentSuccessDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EsewaPaymentSuccessDataImplToJson(
      this,
    );
  }
}

abstract class _EsewaPaymentSuccessData implements EsewaPaymentSuccessData {
  const factory _EsewaPaymentSuccessData(
      {required final String productId,
      required final String productName,
      required final String totalAmount,
      required final String code,
      required final EsewaMessage message,
      required final TransactionDetails transactionDetails,
      required final String merchantName}) = _$EsewaPaymentSuccessDataImpl;

  factory _EsewaPaymentSuccessData.fromJson(Map<String, dynamic> json) =
      _$EsewaPaymentSuccessDataImpl.fromJson;

  @override
  String get productId;
  @override
  String get productName;
  @override
  String get totalAmount;
  @override
  String get code;
  @override
  EsewaMessage get message;
  @override
  TransactionDetails get transactionDetails;
  @override
  String get merchantName;

  /// Create a copy of EsewaPaymentSuccessData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EsewaPaymentSuccessDataImplCopyWith<_$EsewaPaymentSuccessDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EsewaMessage _$EsewaMessageFromJson(Map<String, dynamic> json) {
  return _EsewaMessage.fromJson(json);
}

/// @nodoc
mixin _$EsewaMessage {
  String get technicalSuccessMessage => throw _privateConstructorUsedError;
  String get successMessage => throw _privateConstructorUsedError;

  /// Serializes this EsewaMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EsewaMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EsewaMessageCopyWith<EsewaMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EsewaMessageCopyWith<$Res> {
  factory $EsewaMessageCopyWith(
          EsewaMessage value, $Res Function(EsewaMessage) then) =
      _$EsewaMessageCopyWithImpl<$Res, EsewaMessage>;
  @useResult
  $Res call({String technicalSuccessMessage, String successMessage});
}

/// @nodoc
class _$EsewaMessageCopyWithImpl<$Res, $Val extends EsewaMessage>
    implements $EsewaMessageCopyWith<$Res> {
  _$EsewaMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EsewaMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? technicalSuccessMessage = null,
    Object? successMessage = null,
  }) {
    return _then(_value.copyWith(
      technicalSuccessMessage: null == technicalSuccessMessage
          ? _value.technicalSuccessMessage
          : technicalSuccessMessage // ignore: cast_nullable_to_non_nullable
              as String,
      successMessage: null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EsewaMessageImplCopyWith<$Res>
    implements $EsewaMessageCopyWith<$Res> {
  factory _$$EsewaMessageImplCopyWith(
          _$EsewaMessageImpl value, $Res Function(_$EsewaMessageImpl) then) =
      __$$EsewaMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String technicalSuccessMessage, String successMessage});
}

/// @nodoc
class __$$EsewaMessageImplCopyWithImpl<$Res>
    extends _$EsewaMessageCopyWithImpl<$Res, _$EsewaMessageImpl>
    implements _$$EsewaMessageImplCopyWith<$Res> {
  __$$EsewaMessageImplCopyWithImpl(
      _$EsewaMessageImpl _value, $Res Function(_$EsewaMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of EsewaMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? technicalSuccessMessage = null,
    Object? successMessage = null,
  }) {
    return _then(_$EsewaMessageImpl(
      technicalSuccessMessage: null == technicalSuccessMessage
          ? _value.technicalSuccessMessage
          : technicalSuccessMessage // ignore: cast_nullable_to_non_nullable
              as String,
      successMessage: null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EsewaMessageImpl implements _EsewaMessage {
  const _$EsewaMessageImpl(
      {required this.technicalSuccessMessage, required this.successMessage});

  factory _$EsewaMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$EsewaMessageImplFromJson(json);

  @override
  final String technicalSuccessMessage;
  @override
  final String successMessage;

  @override
  String toString() {
    return 'EsewaMessage(technicalSuccessMessage: $technicalSuccessMessage, successMessage: $successMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EsewaMessageImpl &&
            (identical(
                    other.technicalSuccessMessage, technicalSuccessMessage) ||
                other.technicalSuccessMessage == technicalSuccessMessage) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, technicalSuccessMessage, successMessage);

  /// Create a copy of EsewaMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EsewaMessageImplCopyWith<_$EsewaMessageImpl> get copyWith =>
      __$$EsewaMessageImplCopyWithImpl<_$EsewaMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EsewaMessageImplToJson(
      this,
    );
  }
}

abstract class _EsewaMessage implements EsewaMessage {
  const factory _EsewaMessage(
      {required final String technicalSuccessMessage,
      required final String successMessage}) = _$EsewaMessageImpl;

  factory _EsewaMessage.fromJson(Map<String, dynamic> json) =
      _$EsewaMessageImpl.fromJson;

  @override
  String get technicalSuccessMessage;
  @override
  String get successMessage;

  /// Create a copy of EsewaMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EsewaMessageImplCopyWith<_$EsewaMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TransactionDetails _$TransactionDetailsFromJson(Map<String, dynamic> json) {
  return _TransactionDetails.fromJson(json);
}

/// @nodoc
mixin _$TransactionDetails {
  String get date => throw _privateConstructorUsedError;
  String get referenceId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this TransactionDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionDetailsCopyWith<TransactionDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDetailsCopyWith<$Res> {
  factory $TransactionDetailsCopyWith(
          TransactionDetails value, $Res Function(TransactionDetails) then) =
      _$TransactionDetailsCopyWithImpl<$Res, TransactionDetails>;
  @useResult
  $Res call({String date, String referenceId, String status});
}

/// @nodoc
class _$TransactionDetailsCopyWithImpl<$Res, $Val extends TransactionDetails>
    implements $TransactionDetailsCopyWith<$Res> {
  _$TransactionDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? referenceId = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionDetailsImplCopyWith<$Res>
    implements $TransactionDetailsCopyWith<$Res> {
  factory _$$TransactionDetailsImplCopyWith(_$TransactionDetailsImpl value,
          $Res Function(_$TransactionDetailsImpl) then) =
      __$$TransactionDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, String referenceId, String status});
}

/// @nodoc
class __$$TransactionDetailsImplCopyWithImpl<$Res>
    extends _$TransactionDetailsCopyWithImpl<$Res, _$TransactionDetailsImpl>
    implements _$$TransactionDetailsImplCopyWith<$Res> {
  __$$TransactionDetailsImplCopyWithImpl(_$TransactionDetailsImpl _value,
      $Res Function(_$TransactionDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? referenceId = null,
    Object? status = null,
  }) {
    return _then(_$TransactionDetailsImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionDetailsImpl implements _TransactionDetails {
  const _$TransactionDetailsImpl(
      {required this.date, required this.referenceId, required this.status});

  factory _$TransactionDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionDetailsImplFromJson(json);

  @override
  final String date;
  @override
  final String referenceId;
  @override
  final String status;

  @override
  String toString() {
    return 'TransactionDetails(date: $date, referenceId: $referenceId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDetailsImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, referenceId, status);

  /// Create a copy of TransactionDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDetailsImplCopyWith<_$TransactionDetailsImpl> get copyWith =>
      __$$TransactionDetailsImplCopyWithImpl<_$TransactionDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionDetailsImplToJson(
      this,
    );
  }
}

abstract class _TransactionDetails implements TransactionDetails {
  const factory _TransactionDetails(
      {required final String date,
      required final String referenceId,
      required final String status}) = _$TransactionDetailsImpl;

  factory _TransactionDetails.fromJson(Map<String, dynamic> json) =
      _$TransactionDetailsImpl.fromJson;

  @override
  String get date;
  @override
  String get referenceId;
  @override
  String get status;

  /// Create a copy of TransactionDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionDetailsImplCopyWith<_$TransactionDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
