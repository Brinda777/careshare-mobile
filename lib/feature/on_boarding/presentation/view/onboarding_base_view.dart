import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/route/app_route.dart';

class OnBoardingBaseView extends StatefulWidget {
  const OnBoardingBaseView({super.key});

  @override
  State<OnBoardingBaseView> createState() => _OnBoardingBaseViewState();
}

class _OnBoardingBaseViewState extends State<OnBoardingBaseView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            ImageConstants.onBoardingBackground,
            height: 1.sh,
            width: 1.sw,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: .6.sh,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(
                        0x008E4585), // 0% opacity (completely transparent)
                    const Color(0x1A8E4585), // 10% opacity
                    const Color(0x668E4585), // 40% opacity
                    const Color(0xFF8E4585), // 100% opacity
                  ],
                  stops: const [
                    0.0,
                    0.3,
                    0.6,
                    0.8
                  ], // Adjusted stops to ensure full opacity in bottom 20%
                ),
              ),
              padding: EdgeInsets.only(
                left: 32.w,
                right: 32.w,
                bottom: 50.h,
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Together,\nWe Make a Difference',
                      style: TextStyle(
                        fontFamily: FontFamily.publicSans,
                        fontSize: 50.sp,
                        fontWeight: FontWeight.w400,
                        height: 46.sp / 50.sp,
                        color: ColorConstants.backgroundColor,
                      ),
                    ),
                    46.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 8.h,
                              width: 37.w,
                              decoration: BoxDecoration(
                                color: ColorConstants.backgroundColor,
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                            ),
                            4.horizontalSpace,
                            Container(
                              height: 8.h,
                              width: 8.w,
                              decoration: BoxDecoration(
                                color: ColorConstants.backgroundColor,
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                            ),
                            4.horizontalSpace,
                            Container(
                              height: 8.h,
                              width: 8.w,
                              decoration: BoxDecoration(
                                color: ColorConstants.backgroundColor,
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            Navigator.pushReplacementNamed(
                              context,
                              AppRouter.signInScreen,
                            );
                          },
                          child: SizedBox(
                            height: 40.h,
                            width: 40.w,
                            child: Center(
                              child: Text(
                                'Skip',
                                style: TextStyle(
                                  fontFamily: FontFamily.publicSans,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: ColorConstants.backgroundColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
