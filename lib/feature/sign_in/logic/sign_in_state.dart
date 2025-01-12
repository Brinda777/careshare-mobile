part of 'sign_in_cubit.dart';

extension Validator on SignInState {
  bool get status => Formz.validate([
        password,
        phoneNumber,
      ]);

  bool get canSubmit =>
      password.isPure == false && phoneNumber.isPure == false && status;
}

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    @Default(PhoneNumberFormz.pure()) PhoneNumberFormz phoneNumber,
    @Default(PasswordFormz.pure()) PasswordFormz password,
    @Default(true) bool isPasswordObscure,
    @Default('') String error,
    @Default(false) bool isLoading,
    @Default([]) List<ProductModel> products,
  }) = _SignInState;
}
