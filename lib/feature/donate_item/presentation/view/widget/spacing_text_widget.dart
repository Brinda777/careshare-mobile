import 'package:care_share_nepal/core/imports/ui_imports.dart';

class SpacingTextWidget extends StatelessWidget {
  const SpacingTextWidget({
    super.key,
    required this.title,
    required this.value,
    this.textColor,
  });
  final String title;
  final String value;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: textColor ?? ColorConstants.cardTextColor,
          ),
        ),
      ],
    );
  }
}
