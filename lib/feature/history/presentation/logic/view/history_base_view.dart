import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/feature/history/data/model/historical_model.dart';
import 'package:care_share_nepal/feature/history/presentation/logic/history_cubit.dart';
import 'package:care_share_nepal/feature/history/presentation/logic/view/widgets/history_tab.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:care_share_nepal/feature/history/data/dummy/historical_dummy_data.dart';
import 'package:care_share_nepal/feature/history/presentation/logic/view/historical_content_card.dart';

class HistoryBaseView extends StatelessWidget {
  const HistoryBaseView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HistoryCubit(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              left: 24.w,
              right: 24.w,
              top: 32.h,
              bottom: 24.h,
            ),
            child: BlocBuilder<HistoryCubit, HistoryState>(
              builder: (context, state) {
                return Column(
                  children: [
                    TabsCard(
                      currentIndex: state.selectedTabIndex,
                    ),
                    24.verticalSpace,
                    Expanded(
                      child: _buildContent(state.selectedTabIndex),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(int selectedIndex) {
    final List<HistoricalModel> currentData;

    switch (selectedIndex) {
      case 0:
        currentData = donatedItems;
      case 1:
        currentData = donateForCause;
      case 2:
        currentData = volunteerActivities;
      default:
        currentData = donatedItems;
    }

    return ListView.separated(
      itemCount: currentData.length,
      separatorBuilder: (context, index) => Column(
        children: [
          16.verticalSpace,
          const Divider(),
          16.verticalSpace,
        ],
      ),
      itemBuilder: (context, index) {
        return HistoricalContentCard(
          historicalModel: currentData[index],
        );
      },
    );
  }
}

class TabsCard extends StatelessWidget {
  const TabsCard({
    super.key,
    required this.currentIndex,
  });
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: HistoryTab(
            title: 'Donated items',
            isActive: currentIndex == 0,
            onTap: () {
              context.read<HistoryCubit>().onTabSelected(0);
            },
          ),
        ),
        // 8.horizontalSpace,
        Expanded(
          child: HistoryTab(
            title: 'Donate for cause',
            isActive: currentIndex == 1,
            onTap: () {
              context.read<HistoryCubit>().onTabSelected(1);
            },
          ),
        ),
        12.horizontalSpace,
        Expanded(
          child: HistoryTab(
            title: 'Volunteer',
            isActive: currentIndex == 2,
            onTap: () {
              context.read<HistoryCubit>().onTabSelected(2);
            },
          ),
        ),
      ],
    );
  }
}
