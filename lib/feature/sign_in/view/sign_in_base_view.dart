import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/feature/sign_in/logic/sign_in_cubit.dart';
import 'package:care_share_nepal/route/app_route.dart';
import 'package:care_share_nepal/widgets/app_button.dart';
import 'package:care_share_nepal/widgets/app_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:care_share_nepal/core/formz/formz_exports.dart';

class SignInBaseView extends StatefulWidget {
  const SignInBaseView({super.key});

  @override
  State<SignInBaseView> createState() => _SignInBaseViewState();
}

class _SignInBaseViewState extends State<SignInBaseView> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInCubit, SignInState>(
      listener: (context, state) {
        // Display error message if an error exists
        if (state.error.isNotEmpty) {
          // Show a SnackBar or Dialog for the error message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      child: BlocBuilder<SignInCubit, SignInState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Scaffold(
              resizeToAvoidBottomInset: true,
              body: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 100.h,
                    left: 32.w,
                    right: 32.w,
                    bottom: 32.h,
                  ),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height - 132.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sign in to\n your account',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(
                                    fontSize: 32.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                            80.verticalSpace,
                            AppTextField(
                              controller:
                                  context.read<SignInCubit>().phoneController,
                              labelText: 'Phone Number',
                              hintText: 'Enter your phone number',
                              onChanged: (value) {
                                context
                                    .read<SignInCubit>()
                                    .onPhoneNumberChanged(value);
                              },
                              errorText: !state.phoneNumber.isPure &&
                                      state.phoneNumber.isNotValid
                                  ? state.phoneNumber.error?.explain
                                  : null,
                              keyBoardType: TextInputType.phone,
                            ),
                            39.verticalSpace,
                            AppTextField(
                              controller: context
                                  .read<SignInCubit>()
                                  .passwordController,
                              obscureText: state.isPasswordObscure,
                              onChanged: (value) {
                                context
                                    .read<SignInCubit>()
                                    .onPasswordChanged(value);
                              },
                              errorText: !state.password.isPure &&
                                      state.password.isNotValid
                                  ? state.password.error?.explain
                                  : null,
                              labelText: 'Password',
                              hintText: '6+ characters',
                              suffixIcon: IconButton(
                                onPressed: () {
                                  context.read<SignInCubit>().togglePassword();
                                },
                                icon: Icon(
                                  state.isPasswordObscure
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    AppRouter.sendOptScreen,
                                  );
                                },
                                child: Text(
                                  'Forgot password?',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: ColorConstants.containerColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            AppButton(
                              text: 'Sign in',
                              onPressed: () {
                                if (state.phoneNumber.isNotValid ||
                                    state.password.isNotValid ||
                                    state.phoneNumber.value.isEmpty ||
                                    state.password.value.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Please fill in both fields correctly.',
                                      ),
                                      backgroundColor: Colors.red,
                                    ),
                                  );
                                } else {
                                  // context.read<SignInCubit>().fetchProducts();
                                  context.read<SignInCubit>().signin(
                                      phone: state.phoneNumber.value,
                                      password: state.password.value,
                                      context: context);
                                }
                              },
                            ),
                            24.verticalSpace,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'New here? ',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: ColorConstants.secondaryTextColor,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                      context,
                                      AppRouter.signUpScreen,
                                    );
                                  },
                                  child: Text(
                                    'Create your account',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color: ColorConstants.primaryColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
