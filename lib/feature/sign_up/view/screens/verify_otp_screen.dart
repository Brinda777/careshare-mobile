import 'package:care_share_nepal/core/extensions/pop_extension.dart';
import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/route/app_route.dart';
import 'package:care_share_nepal/widgets/app_button.dart';
import 'package:flutter/services.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({
    super.key,
  });

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  final OtpForm _otpForm = OtpForm();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: PopScope(
        canPop: false,
        onPopInvoked: (value) {
          if (value) {}
        },
        child: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 32.w,
                      right: 32.w,
                      bottom: 24.h,
                    ),
                    child: SingleChildScrollView(
                      child: SizedBox(
                        height: .9.sh,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                32.verticalSpace,
                                _buildTitle(),
                                40.verticalSpace,
                                _buildSubtitle(),
                                46.verticalSpace,
                                _otpForm,
                                32.verticalSpace,
                                _buildVerifyButton(context),
                                24.verticalSpace,
                              ],
                            ),
                            _buildResendCodeText(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Verify OTP',
        style: TextStyle(
          fontSize: 33.sp,
          fontWeight: FontWeight.w700,
          color: ColorConstants.containerColor,
        ),
      ),
    );
  }

  Widget _buildSubtitle() {
    return Text(
      'We\'ve message a 6-digit confirmation code. Please enter the code in below box to verify your account.',
      style: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: ColorConstants.disabledColor,
      ),
    );
  }

  String _formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length < 10) return phoneNumber; // Handle short numbers
    return '${phoneNumber.substring(0, 5)} ****${phoneNumber.substring(phoneNumber.length - 2)}';
  }

  Widget _buildResendCodeText() {
    return RichText(
      text: TextSpan(
        text: "Didn't have code? ",
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: ColorConstants.disabledColor,
        ),
        children: [
          TextSpan(
            text: 'Resend code',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: ColorConstants.primaryColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVerifyButton(BuildContext context) {
    return AppButton(
      onPressed: () async {
        Navigator.pushNamed(
          context,
          AppRouter.setNewPasswordScreen,
        );
      },
      text: 'Verify',
    );
  }
}

class OtpForm extends StatelessWidget {
  OtpForm({super.key});

  final List<TextEditingController> controllers = List.generate(
    6,
    (index) => TextEditingController(),
  );

  // Add focus nodes
  final List<FocusNode> _focusNodes = List.generate(
    6,
    (index) => FocusNode(),
  );

  String getOtpValue() {
    return controllers.map((c) => c.text).join();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:
            List.generate(6, (index) => _buildOtpTextField(context, index)),
      ),
    );
  }

  Widget _buildOtpTextField(BuildContext context, int index) {
    return Container(
      width: 38.w,
      height: 54.h,
      decoration: ShapeDecoration(
        color: ColorConstants.backgroundColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.w,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: ColorConstants.disabledColor.withOpacity(0.2),
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      child: Center(
        child: TextFormField(
          controller: controllers[index],
          focusNode: _focusNodes[index],
          keyboardType: TextInputType.number,
          onChanged: (pin) {
            if (pin.length == 1 && index < 5) {
              _focusNodes[index + 1].requestFocus();
            } else if (pin.isEmpty && index > 0) {
              _focusNodes[index - 1].requestFocus();
            } else {
              _focusNodes[index].unfocus();
            }

            // final otp = getOtpValue();
            // context.read<ForgetPasswordCubit>().updateOtpCompletion(otp);
          },
          onTapOutside: (_) => FocusScope.of(context).unfocus(),
          onTap: () {
            controllers[index].selection = TextSelection.fromPosition(
              TextPosition(offset: controllers[index].text.length),
            );
          },
          textInputAction:
              index == 5 ? TextInputAction.done : TextInputAction.next,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            hintStyle: TextStyle(color: Color(0xFF757575)),
            // Minimize decoration to reduce rebuild
            border: InputBorder.none,
            contentPadding: EdgeInsets.zero,
          ),
        ),
      ),
    );
  }
}
