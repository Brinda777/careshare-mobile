import 'dart:async';

import 'package:care_share_nepal/core/formz/formz_exports.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_cubit.freezed.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit()
      : super(
          const SignUpState(),
        );

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
}
