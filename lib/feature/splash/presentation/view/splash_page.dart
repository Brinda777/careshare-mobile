import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/route/app_route.dart';

class SplashBaseView extends StatefulWidget {
  const SplashBaseView({super.key});

  @override
  State<SplashBaseView> createState() => _SplashBaseViewState();
}

class _SplashBaseViewState extends State<SplashBaseView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
        context,
        AppRouter.onBoardingScreen,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      body: Center(
        child: Image.asset(
          ImageConstants.appIcon,
          height: 250.h,
          width: 250.w,
        ),
      ),
    );
  }
}
