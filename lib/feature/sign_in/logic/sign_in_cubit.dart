import 'package:care_share_nepal/core/formz/formz_exports.dart';
import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/core/locator/locator.dart';
import 'package:care_share_nepal/core/service/api_service.dart';
import 'package:care_share_nepal/feature/sign_in/model/auth_model.dart';
import 'package:care_share_nepal/feature/sign_in/model/product_model.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_cubit.freezed.dart';
part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInState());
  final ApiService _apiService = di<ApiService>();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  void togglePassword() {
    emit(
      state.copyWith(
        isPasswordObscure: !state.isPasswordObscure,
      ),
    );
  }

  void onPhoneNumberChanged(String value) {
    final phoneNumber = PhoneNumberFormz.dirty(value.trim());
    emit(
      state.copyWith(
        phoneNumber: phoneNumber,
        error: '',
      ),
    );
  }

  void onPasswordChanged(String value) {
    final password = PasswordFormz.dirty(value);
    emit(
      state.copyWith(
        password: password,
      ),
    );
  }

  void clearTextControllers() {
    phoneController.clear();
    passwordController.clear();
    emit(
      state.copyWith(
        phoneNumber: const PhoneNumberFormz.pure(),
        password: const PasswordFormz.pure(),
      ),
    );
  }

  ///this is the function to fetch the products from the API
  /// this is only for testing purpose
  /// you can use this product state on your dashboard screen to show the products

  Future<void> fetchProducts() async {
    try {
      emit(
        state.copyWith(
          isLoading: true,
          error: '',
        ),
      );

      final products = await _apiService.get<List<ProductModel>>(
        endpoint: '', // Base URL already includes /objects
        parseResponse: (data) {
          if (data is List) {
            return data
                .map((item) =>
                    ProductModel.fromJson(item as Map<String, dynamic>))
                .toList();
          }
          throw ApiException(message: 'Invalid response format');
        },
      );
      print('product of the API: $products');
      emit(
        state.copyWith(
          products: products,
          isLoading: false,
        ),
      );
    } on ApiException catch (e) {
      emit(state.copyWith(
        error: e.message,
        isLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        error: 'An unexpected error occurred',
        isLoading: false,
      ));
    }
  }

  Future<void> signin({
    required String phone,
    required String password,
    required BuildContext context,
  }) async {
    try {
      emit(
        state.copyWith(
          isLoading: true,
          error: '',
        ),
      );

      final authResponse = await _apiService.post<AuthResponseModel>(
        data: {'phone': phone, 'password': password},
        endpoint: 'auth/login', // Base URL already includes /objects
        parseResponse: (data) {
          if (data is Map<String, dynamic>) {
            return AuthResponseModel.fromJson(data);
          }
          throw ApiException(message: 'Invalid response format');
        },
      );
      print('signin of the API: $authResponse');
      emit(
        state.copyWith(
          authResponse: authResponse,
          isLoading: false,
        ),
      );
      // Navigate to the dashboard screen on successful sign-in
      Navigator.pushReplacementNamed(
        context,
        AppRouter.dashboardScreen,
      );
    } on ApiException catch (e) {
      emit(state.copyWith(
        error: e.message,
        isLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        error: 'An unexpected error occurred',
        isLoading: false,
      ));
    }
  }
}
