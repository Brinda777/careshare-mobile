import 'package:care_share_nepal/core/imports/ui_imports.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.isCheckOut = false,
    this.title,
  });
  final String? title;

  final bool isCheckOut;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 20.h,
        top: 15.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(
              ImageConstants.arrowBackSvg,
            ),
          ),
          Text(
            title ?? 'Donate items',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: ColorConstants.cardTextColor,
            ),
          ),
          if (!isCheckOut)
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  AppRouter.checkOutScreen,
                );
              },
              child: Icon(
                Icons.shopping_cart_outlined,
              ),
            )
          else
            SizedBox(
              width: 25.w,
              height: 25.h,
            ),
        ],
      ),
    );
  }
}
