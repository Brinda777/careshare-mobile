part of 'sign_up_cubit.dart';

extension Validator on SignUpState {
  bool get status => Formz.validate([
        password,
        fullName,
        phoneNumber,
        email,
      ]);

  bool get canSubmit =>
      password.isPure == false &&
      fullName.isPure == false &&
      phoneNumber.isPure == false &&
      email.isPure == false &&
      status;
}

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default(FullNameFormz.pure()) FullNameFormz fullName,
    @Default(PhoneNumberFormz.pure()) PhoneNumberFormz phoneNumber,
    @Default(EmailFormz.pure()) EmailFormz email,
    @Default(PasswordFormz.pure()) PasswordFormz password,
    @Default(ConfirmedPasswordFormz.pure())
    ConfirmedPasswordFormz confirmPassword,
    @Default(false) bool isRegisterSuccess,
    @Default(false) bool isRegisterLoading,
    @Default('') String? message,
    @Default(false) bool showVisibilityIcon,
    @Default(false) bool isPasswordObscure,
    @Default(false) bool isConfirmPasswordObscure,
    @Default(false) bool isLoginLoading,
    @Default('') String? error,
    @Default(null) AuthResponseModel? authResponse,
  }) = _SignUpState;
}
