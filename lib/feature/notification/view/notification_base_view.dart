import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/feature/notification/data/dummy/notification_dummy_data.dart';
import 'package:care_share_nepal/feature/notification/view/widget/notification_item.dart';
import 'package:care_share_nepal/widgets/custom_app_bar.dart';

class NotificationBaseView extends StatelessWidget {
  const NotificationBaseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              isCheckOut: true,
              title: 'Notification',
            ),
            32.verticalSpace,
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                ),
                itemCount: notificationDummyData.length,
                itemBuilder: (context, index) => NotificationItem(
                  notification: notificationDummyData[index],
                  isLastItem: index == notificationDummyData.length - 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
