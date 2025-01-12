import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/feature/dashboard/logic/dashboard_cubit.dart';
import 'package:care_share_nepal/feature/dashboard/view/widget/custom_action_button.dart';
import 'package:care_share_nepal/feature/dashboard/view/widget/dashboard_tab.dart';
import 'package:care_share_nepal/feature/history/presentation/logic/view/history_base_view.dart';
import 'package:care_share_nepal/feature/home/presentation/view/home_base_view.dart';
import 'package:care_share_nepal/feature/profile/presentation/view/profile_base_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardBaseView extends StatefulWidget {
  const DashboardBaseView({super.key});

  @override
  State<DashboardBaseView> createState() => _DashboardBaseViewState();
}

class _DashboardBaseViewState extends State<DashboardBaseView> {
  Widget _buildBody() {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return _buildPage(state.selectedIndex);
      },
    );
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return const HomeBaseView();
      case 1:
        return const HistoryBaseView();
      case 2:
        return const ProfileBaseView();
      default:
        return const Center(child: Text('Page not found'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Stack(
          children: [
            _buildBody(),
            const DashboardTab(),
            BlocBuilder<DashboardCubit, DashboardState>(
              builder: (context, state) {
                return state.selectedIndex == 0
                    ? const CustomFloatingActionButton()
                    : const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}
