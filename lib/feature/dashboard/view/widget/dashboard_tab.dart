import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/feature/dashboard/logic/dashboard_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class DashboardTab extends StatelessWidget {
  const DashboardTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 20.h,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 40.w),
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
          color: ColorConstants.primaryColor,
          borderRadius: BorderRadius.circular(75.r),
        ),
        height: 74.h,
        child: GNav(
            onTabChange: (index) {
              context.read<DashboardCubit>().onTabSelected(index);
            },
            rippleColor: ColorConstants
                .backgroundColor, // tab button ripple color when pressed
            hoverColor: ColorConstants.disabledColor, // tab button hover color
            haptic: true, // haptic feedback
            tabBorderRadius: 44.r,
            tabActiveBorder: Border.all(
                color: ColorConstants.backgroundColor,
                width: 1), // tab button border
            tabBorder: Border.all(
                color: ColorConstants.primaryColor,
                width: 1), // tab button border
            tabShadow: [
              BoxShadow(
                color: ColorConstants.primaryColor,
                blurRadius: 44.r,
              )
            ], // tab button shadow
            curve: Curves.easeOutExpo, // tab animation curves
            duration: Duration(milliseconds: 200), // tab animation duration
            gap: 5.w, // the tab button gap between icon and text
            color: ColorConstants.backgroundColor, // unselected icon color
            activeColor:
                ColorConstants.primaryColor, // selected icon and text color
            iconSize: 24.h, // tab button icon size
            tabBackgroundColor:
                ColorConstants.backgroundColor, // selected tab background color
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 15.h,
            ), // navigation bar padding
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.history,
                text: 'History',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
            ]),
      ),
    );
  }
}
