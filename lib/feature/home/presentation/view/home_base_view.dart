import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/feature/home/data/dummy/emergency_card_dummy_data.dart';
import 'package:care_share_nepal/feature/home/presentation/view/widget/home_app_bar.dart';
import 'package:care_share_nepal/feature/home/presentation/view/widget/home_card_widget.dart';
import 'package:care_share_nepal/feature/home/presentation/view/widget/home_tab_widget.dart';

class HomeBaseView extends StatefulWidget {
  const HomeBaseView({super.key});

  @override
  State<HomeBaseView> createState() => _HomeBaseViewState();
}

class _HomeBaseViewState extends State<HomeBaseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 24.w,
          right: 24.w,
          top: 50.h,
          bottom: 24.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeAppBar(),
            32.verticalSpace,
            Image.asset(
              ImageConstants.digaster,
              height: 184.h,
              fit: BoxFit.cover,
              width: 1.sw,
            ),
            32.verticalSpace,
            HomeTab(
              title: 'Emergency',
              isActive: true,
              onTap: () {},
            ),
            // 25.verticalSpace,
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: emergencyCardData.length,
                  padding: EdgeInsets.only(
                    top: 20.h,
                    bottom: 60.h,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: 16.h,
                      ),
                      child: HomeCardWidget(
                        emergencyCardDataModel: emergencyCardData[index],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
