import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/feature/dashboard/view/dashboard_base_view.dart';
import 'package:care_share_nepal/feature/donate_item/presentation/view/check_out_base_view.dart';
import 'package:care_share_nepal/feature/donate_item/presentation/view/donate_item_base_view.dart';
import 'package:care_share_nepal/feature/donate_item/presentation/view/screen/shipping_detail_screen.dart';
import 'package:care_share_nepal/feature/history/presentation/logic/view/history_base_view.dart';
import 'package:care_share_nepal/feature/home/data/model/emergency_card_data_model.dart';
import 'package:care_share_nepal/feature/home/presentation/view/screens/donate_for_cause/donate_now_form_base_screen.dart';
import 'package:care_share_nepal/feature/home/presentation/view/screens/emergency_detail_screen.dart';
import 'package:care_share_nepal/feature/notification/view/notification_base_view.dart';
import 'package:care_share_nepal/feature/profile/presentation/view/screens/change_password_screen.dart';
import 'package:care_share_nepal/feature/profile/presentation/view/screens/contact_us_screen.dart';
import 'package:care_share_nepal/feature/profile/presentation/view/screens/edit_profile_form.dart';
import 'package:care_share_nepal/feature/report_disaster/view/report_disaster_screen.dart';
import 'package:care_share_nepal/feature/on_boarding/presentation/view/onboarding_base_view.dart';
import 'package:care_share_nepal/feature/report_disaster/view/screens/upload_digaster.dart';
import 'package:care_share_nepal/feature/sign_in/view/sign_in_base_view.dart';
import 'package:care_share_nepal/feature/sign_up/view/screens/send_opt_screen.dart';
import 'package:care_share_nepal/feature/sign_up/view/screens/set_new_password.dart';
import 'package:care_share_nepal/feature/sign_up/view/screens/verify_otp_screen.dart';
import 'package:care_share_nepal/feature/sign_up/view/screens/register_verify_otp_screen.dart';
import 'package:care_share_nepal/feature/sign_up/view/sign_up_base_view.dart';
import 'package:care_share_nepal/feature/splash/presentation/view/splash_page.dart';
import 'package:care_share_nepal/feature/home/presentation/view/screens/volunter/become_voluner_form_base_view.dart';
import 'package:care_share_nepal/widgets/payment_failed_screen.dart';
import 'package:care_share_nepal/widgets/payment_success_screen.dart';

class AppRouter {
  const AppRouter._();

  static const String splashScreen = '/splashScreen';

  static const String onBoardingScreen = '/onBoardingScreen';
  static const String signInScreen = '/signInScreen';
  static const String signUpScreen = '/signUpScreen';
  static const String sendOptScreen = '/sendOptScreen';
  static const String verifyOtpScreen = '/verifyOtpScreen';
  static const String registerVerifyOtpScreen = '/registerVerifyOtpScreen';
  static const String setNewPasswordScreen = '/setNewPasswordScreen';
  static const String dashboardScreen = '/dashboardScreen';
  static const String emergencyDetailScreen = '/emergencyDetailScreen';
  static const String donateItemScreen = '/donateItemScreen';
  static const String checkOutScreen = '/checkOutScreen';
  static const String shippingDetailScreen = '/shippingDetailScreen';
  static const String becomeVolunterFormScreen = '/becomeVolunterFormScreen';
  static const String donateNowFormScreen = '/donateNowFormScreen';
  static const String reportDisasterFormScreen = '/reportDisasterFormScreen';
  static const String uploadDigasterScreen = '/uploadDigasterScreen';
  static const String notificationScreen = '/notificationScreen';
  static const String editProfileFormScreen = '/editProfileFormScreen';
  static const String changePasswordScreen = '/changePasswordScreen';
  static const String contactUsScreen = '/contactUsScreen';
  static const String paymentSuccessScreen = '/paymentSuccessScreen';
  static const String paymentFailedScreen = '/paymentFailedScreen';
  static const String historyScreen = '/historyScreen';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    Object? argument = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => SplashBaseView(),
        );

      case splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashBaseView(),
        );

      case onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingBaseView(),
        );

      case signInScreen:
        return MaterialPageRoute(
          builder: (_) => const SignInBaseView(),
        );

      case signUpScreen:
        return MaterialPageRoute(
          builder: (_) => const SignUpBaseView(),
        );

      case notificationScreen:
        return MaterialPageRoute(
          builder: (_) => const NotificationBaseView(),
        );

      case editProfileFormScreen:
        return MaterialPageRoute(
          builder: (_) => const EditProfileForm(),
        );

      case paymentSuccessScreen:
        return MaterialPageRoute(
          builder: (_) => PaymentSuccessScreen(
            message: settings.arguments as String,
          ),
        );

      case paymentFailedScreen:
        return MaterialPageRoute(
          builder: (_) => PaymentFailedScreen(
            message: settings.arguments as String,
          ),
        );

      case reportDisasterFormScreen:
        return MaterialPageRoute(
          builder: (_) => const ReportDisasterFormBaseView(),
        );

      case uploadDigasterScreen:
        return MaterialPageRoute(
          builder: (_) => const UploadDigasterScreen(),
        );

      case changePasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const ChangePasswordWidget(),
        );

      case contactUsScreen:
        return MaterialPageRoute(
          builder: (_) => const ContactUsScreen(),
        );

      case setNewPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const SetNewPasswordScreen(),
        );

      case sendOptScreen:
        return MaterialPageRoute(
          builder: (_) => const SendOptScreen(),
        );

      case donateNowFormScreen:
        return MaterialPageRoute(
          builder: (_) => const DonateNowFormBaseScreen(),
        );

      case dashboardScreen:
        return MaterialPageRoute(
          builder: (_) => const DashboardBaseView(),
        );

      case donateItemScreen:
        return MaterialPageRoute(
          builder: (_) => const DonateItemBaseView(),
        );

      case becomeVolunterFormScreen:
        return MaterialPageRoute(
          builder: (_) => const BecomeVolunterFormBaseView(),
        );

      case verifyOtpScreen:
        return MaterialPageRoute(
          builder: (_) => const VerifyOtpScreen(),
        );

      case registerVerifyOtpScreen:
        return MaterialPageRoute(
          builder: (_) => const RegisterVerifyOtpScreen(),
        );

      case checkOutScreen:
        return MaterialPageRoute(
          builder: (_) => const CheckOutBaseView(),
        );

      case shippingDetailScreen:
        return MaterialPageRoute(
          builder: (_) => const ShippingDetailScreen(),
        );

      case emergencyDetailScreen:
        return MaterialPageRoute(
          builder: (_) => EmergencyDetailScreen(
            emergencyCardDataModel: argument as EmergencyCardDataModel,
          ),
        );

      case historyScreen:
        return MaterialPageRoute(
          builder: (_) => const HistoryBaseView(),
        );

      default:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const DefaultScreen(),
          settings: settings,
        );
    }
  }
}

class DefaultScreen extends StatelessWidget {
  const DefaultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(ImageConstants.error),
            16.verticalSpace,
            Text(
              'Failed to Navigate',
              style: TextStyle(
                fontSize: 18.sp,
                height: 25.2.sp / 18.sp,
                fontWeight: FontWeight.w500,
                color: const Color.fromARGB(
                  255,
                  255,
                  0,
                  0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
