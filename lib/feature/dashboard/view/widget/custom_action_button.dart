import 'package:care_share_nepal/core/imports/ui_imports.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          AppRouter.reportDisasterFormScreen,
        );
      },
      child: Stack(
        children: [
          Positioned(
            bottom: 100.h,
            right: 67.w,
            child: Container(
              height: 74.h,
              width: 74.w,
              decoration: BoxDecoration(
                color: ColorConstants.dangerColor,
                borderRadius: BorderRadius.circular(100.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Image.asset(
                ImageConstants.siron,
                height: 24.h,
                width: 24.w,
              ),
            ),
          ),
          Positioned(
            bottom: 105.h,
            right: 75.w,
            child: Container(
              height: 16.h,
              width: 16.w,
              decoration: BoxDecoration(
                color: ColorConstants.dangerColor,
                borderRadius: BorderRadius.circular(20.r),
                border: Border.all(
                  color: ColorConstants.backgroundColor,
                  width: 1.5,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Icon(
                Icons.add,
                size: 12.h,
                color: ColorConstants.backgroundColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
