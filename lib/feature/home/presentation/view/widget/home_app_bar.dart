import 'package:care_share_nepal/core/imports/ui_imports.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Hello!',
              style: TextStyle(
                fontSize: 34.sp,
                height: 31.sp / 34.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            16.horizontalSpace,
            Text(
              'Brinda',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              AppRouter.notificationScreen,
            );
          },
          child: Container(
            height: 48.h,
            width: 48.h,
            decoration: BoxDecoration(
              color: ColorConstants.backgroundColor,
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 25.h),
              child: Image.asset(
                ImageConstants.bell,
                height: 48.h,
                width: 48.h,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
