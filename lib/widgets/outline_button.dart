import 'package:care_share_nepal/core/imports/ui_imports.dart';

class OutlineButton extends StatelessWidget {
  const OutlineButton({
    required this.image,
    required this.text,
    required this.isSelected,
    required this.onTap,
    super.key,
  });
  final String image;
  final String text;
  final bool isSelected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 53.h,
        width: 1.sw,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color:
              isSelected ? ColorConstants.outlineButtonFillColor : Colors.white,
          border: Border.all(
            color: isSelected
                ? ColorConstants.outlineButtonBorderColor
                : ColorConstants.disabledColor,
          ),
        ),
        child: Align(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                image,
                height: 32.h,
                width: 32.w,
              ),
              16.horizontalSpace,
              Text(
                text,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
