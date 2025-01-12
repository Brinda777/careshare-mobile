import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/feature/donate_item/presentation/logic/donate_item_cubit.dart';
import 'package:care_share_nepal/widgets/custom_app_bar.dart';
import 'package:care_share_nepal/feature/donate_item/presentation/view/widget/donate_item_tab_view.dart';
import 'package:care_share_nepal/feature/home/presentation/view/widget/home_tab_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DonateItemBaseView extends StatefulWidget {
  const DonateItemBaseView({super.key});

  @override
  State<DonateItemBaseView> createState() => _DonateItemBaseViewState();
}

class _DonateItemBaseViewState extends State<DonateItemBaseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40.h),
            child: CustomAppBar(),
          ),
          16.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: DonateItemTabBar(),
          ),
          Expanded(
            child: BlocSelector<DonateItemCubit, DonateItemState, int>(
              selector: (state) => state.selectedIndex,
              builder: (context, selectedIndex) {
                return DonateItemTabView(
                  index: selectedIndex,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DonateItemTabBar extends StatelessWidget {
  const DonateItemTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<DonateItemCubit, DonateItemState, int>(
      selector: (state) {
        return state.selectedIndex;
      },
      builder: (context, selectedIndex) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HomeTab(
              title: 'Food',
              isActive: selectedIndex == 0,
              onTap: () {
                context.read<DonateItemCubit>().onTabSelected(0);
              },
            ),
            HomeTab(
              title: 'Clothes',
              isActive: selectedIndex == 1,
              onTap: () {
                context.read<DonateItemCubit>().onTabSelected(1);
              },
            ),
            HomeTab(
              title: 'Medicine',
              isActive: selectedIndex == 2,
              onTap: () {
                context.read<DonateItemCubit>().onTabSelected(2);
              },
            ),
          ],
        );
      },
    );
  }
}
