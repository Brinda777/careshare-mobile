import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/feature/sign_up/logic/sign_up_cubit.dart';
import 'package:care_share_nepal/widgets/app_button.dart';
import 'package:care_share_nepal/widgets/app_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:care_share_nepal/core/formz/formz_exports.dart';

class SendOptScreen extends StatelessWidget {
  const SendOptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 24.w,
          right: 24.w,
          top: 60.h,
          bottom: 35.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: BlocBuilder<SignUpCubit, SignUpState>(
                builder: (context, state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Enter your \nphone number',
                        style: TextStyle(
                          fontFamily: FontFamily.leagueSpartanRegular,
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w400,
                          height: 1.2,
                        ),
                      ),
                      40.verticalSpace,
                      Text(
                        'Enter your phone number to receive a verification code',
                        style: TextStyle(
                          fontFamily: FontFamily.publicSans,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          height: 24.sp / 16.sp,
                        ),
                      ),
                      40.verticalSpace,
                      AppTextField(
                        controller: context
                            .read<SignUpCubit>()
                            .otpPhoneNumberTextController,
                        onChanged: (value) {
                          context
                              .read<SignUpCubit>()
                              .onPhoneNumberChanged(value);
                        },
                        errorText: !state.phoneNumber.isPure &&
                                state.phoneNumber.isNotValid
                            ? state.phoneNumber.error?.explain
                            : null,
                        labelText: 'Phone number',
                        hintText: 'Enter your phone number',
                        labelTextStyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          height: 24.sp / 14.sp,
                        ),
                      ),
                      58.verticalSpace,
                      AppButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            AppRouter.verifyOtpScreen,
                          );
                        },
                        text: 'Send code',
                      ),
                    ],
                  );
                },
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Get back ',
                style: TextStyle(
                  color: ColorConstants.disabledColor,
                  fontSize: 12.sp,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Login',
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
        ),
      ),
    );
  }
}
