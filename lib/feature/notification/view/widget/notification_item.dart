import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/feature/notification/data/model/notification_model.dart';
import 'package:care_share_nepal/widgets/app_button.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
    required this.notification,
    this.isLastItem = false,
  });
  final NotificationModel notification;
  final bool isLastItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              notification.title,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              notification.notificationDuration,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: ColorConstants.secondaryTextColor,
              ),
            ),
          ],
        ),
        4.verticalSpace,
        Text(
          notification.description,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        16.verticalSpace,
        Row(
          children: [
            Expanded(
              child: AppButton(
                height: 36.h,
                text: 'I’m safe',
                buttonColor: ColorConstants.primaryColor,
                onPressed: () {},
              ),
            ),
            16.horizontalSpace,
            Expanded(
              child: AppButton(
                text: 'I’m not safe',
                buttonColor: ColorConstants.primaryColor,
                onPressed: () {},
                height: 36.h,
              ),
            ),
          ],
        ),
        27.verticalSpace,
        isLastItem
            ? const SizedBox.shrink()
            : Divider(
                color: ColorConstants.dividerColor,
              ),
        27.verticalSpace,
      ],
    );
  }
}
