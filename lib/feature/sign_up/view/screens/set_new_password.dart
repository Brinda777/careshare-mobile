import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/feature/sign_up/logic/auth_set_password/auth_set_password_cubit.dart';
import 'package:care_share_nepal/widgets/app_button.dart';
import 'package:care_share_nepal/widgets/app_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SetNewPasswordScreen extends StatefulWidget {
  const SetNewPasswordScreen({super.key});

  @override
  State<SetNewPasswordScreen> createState() => _SetNewPasswordScreenState();
}

class _SetNewPasswordScreenState extends State<SetNewPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  Widget _buildRequirementItem(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Row(
        children: [
          Container(
            height: 4.h,
            width: 4.h,
            margin: EdgeInsets.only(right: 8.w),
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPasswordRequirementsCard() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Create new password',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            height: 22.sp / 20.sp,
          ),
        ),
        12.verticalSpace,
        Text(
          'You can now create a new password for your account.',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: ColorConstants.disabledColor,
            height: 22.sp / 14.sp,
          ),
          textAlign: TextAlign.center,
        ),
        12.verticalSpace,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthSetPasswordCubit(),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: BlocBuilder<AuthSetPasswordCubit, AuthSetPasswordState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              40.verticalSpace,
                              _buildPasswordRequirementsCard(),
                              16.verticalSpace,
                              Form(
                                key: _formKey,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        35.verticalSpace,
                                        AppTextField(
                                          obscureText: state.isPasswordObscure,
                                          controller: newPasswordController,
                                          labelText: 'New Password',
                                          hintText: 'Enter your new password',
                                          onChanged: (value) {
                                            context
                                                .read<AuthSetPasswordCubit>()
                                                .onPasswordChanged(value);
                                          },
                                          errorText: !state.password.isPure &&
                                                  state.password.isNotValid
                                              ? state.password.error?.explain
                                              : null,
                                          suffixIcon: IconButton(
                                            onPressed: () {
                                              context
                                                  .read<AuthSetPasswordCubit>()
                                                  .togglePassword();
                                            },
                                            icon: Icon(
                                              state.isPasswordObscure
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                            ),
                                          ),
                                        ),
                                        24.verticalSpace,
                                        AppTextField(
                                          obscureText:
                                              state.isConfirmPasswordObscure,
                                          controller: confirmPasswordController,
                                          labelText: 'Confirm Password',
                                          hintText:
                                              'Enter your confirm password',
                                          onChanged: (value) {
                                            context
                                                .read<AuthSetPasswordCubit>()
                                                .onConfirmPasswordChanged(
                                                    value);
                                          },
                                          errorText:
                                              !state.confirmPassword.isPure &&
                                                      state.confirmPassword
                                                          .isNotValid
                                                  ? state.confirmPassword.error
                                                      ?.explain
                                                  : null,
                                          suffixIcon: IconButton(
                                            onPressed: () {
                                              context
                                                  .read<AuthSetPasswordCubit>()
                                                  .toggleConfirmPassword();
                                            },
                                            icon: Icon(
                                              state.isConfirmPasswordObscure
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 32.h,
                        ),
                        child: AppButton(
                          onPressed: state.canSubmit
                              ? () {
                                  context.popTimes(3);
                                }
                              : null,
                          text: 'Save',
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
