import 'package:care_share_nepal/core/imports/ui_imports.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({
    required this.title,
    required this.isActive,
    required this.onTap,
    super.key,
  });

  final String title;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 100.w,
        height: 40.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
                color: isActive
                    ? ColorConstants.primaryColor
                    : ColorConstants.disabledColor,
              ),
            ),
            8.verticalSpace,
            if (isActive)
              Container(
                decoration: BoxDecoration(
                  color: ColorConstants.primaryColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                height: 5.h,
                width: 54.w,
              ),
          ],
        ),
      ),
    );
  }
}
