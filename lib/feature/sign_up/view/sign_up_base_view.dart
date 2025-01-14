import 'package:care_share_nepal/core/fonts/fonts.dart';
import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/feature/sign_up/logic/sign_up_cubit.dart';
import 'package:care_share_nepal/feature/sign_up/view/widgets/sign_up_form.dart';
import 'package:care_share_nepal/route/app_route.dart';
import 'package:care_share_nepal/widgets/app_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBaseView extends StatefulWidget {
  const SignUpBaseView({super.key});

  @override
  State<SignUpBaseView> createState() => _SignUpBaseViewState();
}

class _SignUpBaseViewState extends State<SignUpBaseView> {
  late final SignUpCubit _cubit;
  @override
  void initState() {
    super.initState();
    _cubit = context.read<SignUpCubit>();
  }

  @override
  void dispose() {
    _cubit.clearTextControllers();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(listener: (context, state) {
      // Display error message if an error exists
      if (state.error!.isNotEmpty) {
        // Show a SnackBar or Dialog for the error message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(state.error!),
            backgroundColor: Colors.red,
          ),
        );
      }
    }, child: BlocBuilder<SignUpCubit, SignUpState>(builder: (context, state) {
      return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.only(
              left: 24.w,
              right: 24.w,
              top: 60.h,
              bottom: 24.h,
            ),
            child: SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height - 80.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Create\nyour Account',
                            style: TextStyle(
                              fontFamily: FontFamily.leagueSpartanRegular,
                              fontSize: 32.sp,
                              fontWeight: FontWeight.w400,
                              height: 1.2,
                            ),
                          ),
                        ),
                        54.verticalSpace,
                        SignUpForm(),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // 55.verticalSpace,
                        BlocSelector<SignUpCubit, SignUpState, bool>(
                          selector: (state) {
                            return state.canSubmit;
                          },
                          builder: (context, canSubmit) {
                            return AppButton(
                              onPressed: () {
                                // Navigator.pushNamed(
                                //   context,
                                //   AppRouter.verifyOtpScreen,
                                // );

                                if (state.phoneNumber.isNotValid ||
                                    state.password.isNotValid ||
                                    state.fullName.isNotValid ||
                                    state.fullName.value.isEmpty ||
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
                                  context.read<SignUpCubit>().signUp(
                                      fullName: state.fullName.value,
                                      phone: state.phoneNumber.value,
                                      email: state.email.value,
                                      password: state.password.value,
                                      context: context);
                                }
                              },
                              text: 'Sign Up',
                            );
                          },
                        ),
                        24.verticalSpace,

                        RichText(
                          text: TextSpan(
                            text: 'By register, I agree to ',
                            style: TextStyle(
                              color: ColorConstants.disabledColor,
                              fontSize: 12.sp,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'terms of use',
                                style: TextStyle(
                                  color: ColorConstants.containerColor,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 2.h,
                                  decorationStyle: TextDecorationStyle.solid,
                                  fontSize: 12.sp,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pop(context);
                                  },
                              ),
                              TextSpan(
                                text: ' and ',
                                style: TextStyle(
                                  color: ColorConstants.disabledColor,
                                  decorationThickness: 2.h,
                                  decorationStyle: TextDecorationStyle.solid,
                                  fontSize: 12.sp,
                                ),
                              ),
                              TextSpan(
                                text: 'privacy policy',
                                style: TextStyle(
                                  color: ColorConstants.containerColor,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 2.h,
                                  decorationStyle: TextDecorationStyle.solid,
                                  fontSize: 12.sp,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pop(context);
                                  },
                              ),
                            ],
                          ),
                        ),
                        40.verticalSpace,

                        RichText(
                          text: TextSpan(
                            text: 'Have an account?',
                            style: TextStyle(
                              color: ColorConstants.disabledColor,
                              fontSize: 12.sp,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' Click to Login',
                                style: TextStyle(
                                  color: ColorConstants.primaryColor,
                                  fontWeight: FontWeight.w500,
                                  // decoration: TextDecoration.underline,
                                  decorationThickness: 2.h,
                                  decorationStyle: TextDecorationStyle.solid,
                                  fontSize: 14.sp,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pop(context);
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }));
  }
}
