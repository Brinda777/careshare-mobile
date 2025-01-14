import 'dart:async';

import 'package:care_share_nepal/core/formz/formz_exports.dart';
import 'package:care_share_nepal/core/locator/locator.dart';
import 'package:care_share_nepal/core/service/api_service.dart';
import 'package:care_share_nepal/feature/sign_in/model/auth_model.dart';
import 'package:care_share_nepal/route/app_route.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_cubit.freezed.dart';

part 'sign_up_state.dart';

// flutter pub run build_runner build --delete-conflicting-outputs

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit()
      : super(
          SignUpState(),
        );

  final ApiService _apiService = di<ApiService>();
  final TextEditingController phoneNumberTextController =
      TextEditingController();

  final TextEditingController passwordTextController = TextEditingController();
  final TextEditingController fullNameTextController = TextEditingController();
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController otpPhoneNumberTextController =
      TextEditingController();

  void onFullNameChanged(String value) {
    final fullName = FullNameFormz.dirty(
      value.trim(),
    );
    emit(
      state.copyWith(
        fullName: fullName,
        error: '',
      ),
    );
  }

  void onEmailChanged(String value) {
    final email = EmailFormz.dirty(value.trim());
    emit(
      state.copyWith(
        email: email,
        error: '',
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
    final password = PasswordFormz.dirty(
      value,
      state.password.value,
    );
    final confirmPassword = ConfirmedPasswordFormz.dirty(
      password: value,
      value: state.confirmPassword.value,
    );

    emit(
      state.copyWith(
        password: password,
        confirmPassword: state.confirmPassword.isPure
            ? state.confirmPassword
            : confirmPassword,
      ),
    );
  }

  void onConfirmPasswordChanged(String value) {
    final confirmPassword = ConfirmedPasswordFormz.dirty(
      password: state.password.value,
      value: value,
    );
    emit(
      state.copyWith(
        confirmPassword: confirmPassword,
      ),
    );
  }

  void onPasswordClearClick() {
    emit(
      state.copyWith(
        password: const PasswordFormz.pure(),
      ),
    );
    passwordTextController.clear();
  }

  void togglePassword() {
    emit(
      state.copyWith(
        isPasswordObscure: !state.isPasswordObscure,
      ),
    );
  }

  void toggleConfirmPassword() {
    emit(
      state.copyWith(
        isConfirmPasswordObscure: !state.isConfirmPasswordObscure,
      ),
    );
  }

  void clearTextControllers() {
    phoneNumberTextController.clear();
    passwordTextController.clear();
    fullNameTextController.clear();
    emailTextController.clear();
    confirmPasswordController.clear();
    emit(
      state.copyWith(
        phoneNumber: const PhoneNumberFormz.pure(),
        fullName: const FullNameFormz.pure(),
        password: const PasswordFormz.pure(),
        confirmPassword: const ConfirmedPasswordFormz.pure(),
        email: const EmailFormz.pure(),
      ),
    );
  }

  Future<void> signUp({
    required String fullName,
    required String phone,
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      emit(
        state.copyWith(
          isLoginLoading: true,
          error: '',
        ),
      );

      final authResponse = await _apiService.post<AuthResponseModel>(
        data: {
          'fullName': fullName,
          'email': email,
          'phone': phone,
          'password': password
        },
        endpoint: 'auth/register', // Base URL already includes /objects
        parseResponse: (data) {
          if (data is Map<String, dynamic>) {
            return AuthResponseModel.fromJson(data);
          }
          throw ApiException(message: 'Invalid response format');
        },
      );
      print('signUp of the API: $authResponse');
      emit(
        state.copyWith(
          authResponse: authResponse,
          isLoginLoading: false,
        ),
      );
      // Navigate to the dashboard screen on successful sign-up
      Navigator.pushReplacementNamed(
        context,
        AppRouter.registerVerifyOtpScreen,
      );
    } on ApiException catch (e) {
      emit(state.copyWith(
        error: e.message,
        isLoginLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        error: 'An unexpected error occurred',
        isLoginLoading: false,
      ));
    }
  }
}
