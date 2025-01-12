import 'package:care_share_nepal/core/constants/e_sewa_key.dart';
import 'package:care_share_nepal/core/formz/formz_exports.dart';
import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/core/locator/locator.dart';
import 'package:care_share_nepal/core/service/api_service.dart';
import 'package:care_share_nepal/feature/donate_item/presentation/logic/donate_item_cubit.dart';
import 'package:care_share_nepal/feature/home/data/entity/e_sewa_success_entity.dart';
import 'package:care_share_nepal/feature/sign_in/model/product_model.dart';
import 'package:care_share_nepal/widgets/custom_toast.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:esewa_flutter_sdk/esewa_flutter_sdk.dart';
import 'package:esewa_flutter_sdk/esewa_config.dart';
import 'package:esewa_flutter_sdk/esewa_payment.dart';
import 'package:esewa_flutter_sdk/esewa_payment_success_result.dart';

part 'donation_cubit.freezed.dart';
part 'donation_state.dart';

class DonationCubit extends Cubit<DonationState> {
  DonationCubit() : super(const DonationState());

  final _apiService = di<ApiService>();

  Future<void> initiateEsewaPayment({
    required String productId,
    required String productName,
    required String productPrice,
    required BuildContext context,
  }) async {
    emit(
      state.copyWith(
        isLoading: true,
        error: '',
        isPaymentSuccess: false,
        isPaymentFailed: false,
      ),
    );

    try {
      EsewaFlutterSdk.initPayment(
        esewaConfig: EsewaConfig(
          environment: Environment.test,
          clientId: EsewaKey.clientId,
          secretId: EsewaKey.clientSecret,
        ),
        esewaPayment: EsewaPayment(
          productId: productId,
          productName: productName,
          productPrice: productPrice,
          callbackUrl: '',
        ),
        onPaymentSuccess: (EsewaPaymentSuccessResult data) {
          emit(
            state.copyWith(
              isLoading: false,
              error: '',
              isPaymentSuccess: true,
              isPaymentFailed: false,
            ),
          );
          debugPrint(":::SUCCESS::: => $data");
          Navigator.pushNamed(
            context,
            AppRouter.paymentSuccessScreen,
            arguments: data.message,
          );
          // verifyTransactionStatus(data);
        },
        onPaymentFailure: (data) {
          debugPrint(":::FAILURE::: => $data");
          emit(
            state.copyWith(
              isLoading: false,
              error: '',
              isPaymentSuccess: false,
              isPaymentFailed: true,
            ),
          );
          Navigator.pushNamed(
            context,
            AppRouter.paymentFailedScreen,
            arguments: data.toString(),
          );
        },
        onPaymentCancellation: (data) {
          debugPrint(":::CANCELLATION::: => $data");
          emit(
            state.copyWith(
              isLoading: false,
              isPaymentFailed: true,
              error: 'Payment cancelled',
            ),
          );
          CustomToast.show(
            context,
            'Payment cancelled',
          );
        },
      );
    } on Exception catch (e) {
      debugPrint("EXCEPTION : ${e.toString()}");
      emit(state.copyWith(
        isLoading: false,
        isPaymentFailed: true,
        error: e.toString(),
      ));
    }
  }
}
