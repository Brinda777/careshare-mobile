part of 'auth_set_password_cubit.dart';

@freezed
class AuthSetPasswordState with _$AuthSetPasswordState {
  const factory AuthSetPasswordState({
    @Default(PasswordFormz.pure()) PasswordFormz password,
    @Default(ConfirmedPasswordFormz.pure())
    ConfirmedPasswordFormz confirmPassword,
    @Default(true) bool isPasswordObscure,
    @Default(true) bool isConfirmPasswordObscure,
  }) = _AuthSetPasswordState;
  const AuthSetPasswordState._();
}

extension Validator on AuthSetPasswordState {
  bool get status => Formz.validate([
        password,
        confirmPassword,
      ]);

  bool get isPasswordsSame => password.value == confirmPassword.value;

  bool get canSubmit =>
      password.isPure == false &&
      confirmPassword.isPure == false &&
      isPasswordsSame &&
      status;
}
