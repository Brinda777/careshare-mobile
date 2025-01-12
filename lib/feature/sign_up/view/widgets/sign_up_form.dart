import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/feature/sign_up/logic/sign_up_cubit.dart';
import 'package:care_share_nepal/widgets/app_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:care_share_nepal/core/formz/formz_exports.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppTextField(
              controller: context.read<SignUpCubit>().fullNameTextController,
              labelText: 'Full Name',
              hintText: 'Enter your full name',
              onChanged: (value) {
                context.read<SignUpCubit>().onFullNameChanged(value);
              },
              errorText: !state.fullName.isPure && state.fullName.isNotValid
                  ? state.fullName.error?.explain
                  : null,
              // keyBoardType: TextInputType.phone,
              labelTextStyle: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                height: 24.sp / 14.sp,
              ),
            ),
            24.verticalSpace,
            AppTextField(
              controller: context.read<SignUpCubit>().phoneNumberTextController,
              labelText: 'Phone Number',
              hintText: 'Enter your phone number',
              onChanged: (value) {
                context.read<SignUpCubit>().onPhoneNumberChanged(value);
              },
              errorText:
                  !state.phoneNumber.isPure && state.phoneNumber.isNotValid
                      ? state.phoneNumber.error?.explain
                      : null,
              keyBoardType: TextInputType.phone,
              labelTextStyle: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                height: 24.sp / 14.sp,
              ),
            ),
            24.verticalSpace,
            AppTextField(
              controller: context.read<SignUpCubit>().emailTextController,
              labelText: 'Email',
              hintText: 'Enter your email',
              onChanged: (value) {
                context.read<SignUpCubit>().onEmailChanged(value);
              },
              errorText: !state.email.isPure && state.email.isNotValid
                  ? state.email.error?.explain
                  : null,
              keyBoardType: TextInputType.emailAddress,
              labelTextStyle: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                height: 24.sp / 14.sp,
              ),
            ),
            24.verticalSpace,
            AppTextField(
              controller: context.read<SignUpCubit>().passwordTextController,
              obscureText: !state.isPasswordObscure,
              onChanged: (value) {
                context.read<SignUpCubit>().onPasswordChanged(value);
              },
              errorText: !state.password.isPure && state.password.isNotValid
                  ? state.password.error?.explain
                  : null,
              labelText: 'Password',
              hintText: '6+ characters',
              labelTextStyle: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                height: 24.sp / 14.sp,
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  context.read<SignUpCubit>().togglePassword();
                },
                icon: Icon(
                  state.isPasswordObscure
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
              ),
            ),
            24.verticalSpace,
            AppTextField(
              controller: context.read<SignUpCubit>().confirmPasswordController,
              obscureText: !state.isConfirmPasswordObscure,
              onChanged: (value) {
                context.read<SignUpCubit>().onConfirmPasswordChanged(value);
              },
              errorText: !state.confirmPassword.isPure &&
                      state.confirmPassword.isNotValid
                  ? state.confirmPassword.error?.explain
                  : null,
              labelText: 'Confirm Password',
              hintText: 'Enter your password again',
              labelTextStyle: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                height: 24.sp / 14.sp,
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  context.read<SignUpCubit>().toggleConfirmPassword();
                },
                icon: Icon(
                  state.isConfirmPasswordObscure
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
