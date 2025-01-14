import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/feature/home/data/dummy/emergency_card_dummy_data.dart';
import 'package:care_share_nepal/feature/home/data/logic/event_cubit.dart';
import 'package:care_share_nepal/feature/home/presentation/view/widget/home_app_bar.dart';
import 'package:care_share_nepal/feature/home/presentation/view/widget/home_card_widget.dart';
import 'package:care_share_nepal/feature/home/presentation/view/widget/home_tab_widget.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBaseView extends StatefulWidget {
  const HomeBaseView({super.key});

  @override
  State<HomeBaseView> createState() => _HomeBaseViewState();
}

class _HomeBaseViewState extends State<HomeBaseView> {
  @override
  void initState() {
    super.initState();
    // Fetch events when the widget is initialized
    context.read<EventCubit>().fetchEvents();
  }

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
            const HomeAppBar(),
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
            Expanded(
              child: BlocBuilder<EventCubit, EventState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    // Show a loading spinner while events are being fetched
                    return const Center(child: CircularProgressIndicator());
                  } else if (state.error.isNotEmpty) {
                    // Display an error message if fetching events fails
                    return Center(
                      child: Text(
                        state.error,
                        style: TextStyle(fontSize: 16.sp, color: Colors.red),
                      ),
                    );
                  } else if (state.events.isEmpty) {
                    // Display a message if no events are available
                    return const Center(
                      child: Text('No events available at the moment.'),
                    );
                  } else {
                    // Display the list of events
                    return ListView.builder(
                      itemCount: state.events.length,
                      padding: EdgeInsets.only(
                        top: 20.h,
                        bottom: 60.h,
                      ),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 16.h),
                          child: HomeCardWidget(
                            emergencyCardDataModel: state.events[index],
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
