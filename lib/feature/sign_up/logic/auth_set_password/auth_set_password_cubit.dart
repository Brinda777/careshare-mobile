import 'dart:async';

import 'package:care_share_nepal/core/formz/formz_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_set_password_cubit.freezed.dart';

part 'auth_set_password_state.dart';

class AuthSetPasswordCubit extends Cubit<AuthSetPasswordState> {
  AuthSetPasswordCubit()
      : super(
          const AuthSetPasswordState(),
        );

  final TextEditingController passwordTextController = TextEditingController();
  final TextEditingController confirmPasswordTextController =
      TextEditingController();

  void onPasswordChanged(String value) {
    final password = PasswordFormz.dirty(value);
    final confirmPassword = ConfirmedPasswordFormz.dirty(
      password: password.value,
      value: state.confirmPassword.value,
    );
    emit(
      state.copyWith(
        password: password,
        confirmPassword: confirmPassword,
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
    passwordTextController.clear();
    confirmPasswordTextController.clear();
    emit(
      state.copyWith(
        password: const PasswordFormz.pure(),
        confirmPassword: const ConfirmedPasswordFormz.pure(),
      ),
    );
  }
}
