import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/feature/home/data/model/emergency_card_data_model.dart';
import 'package:care_share_nepal/widgets/app_button.dart';

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({
    super.key,
    required this.emergencyCardDataModel,
  });

  final EmergencyCardDataModel emergencyCardDataModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          AppRouter.emergencyDetailScreen,
          arguments: emergencyCardDataModel,
        );
      },
      child: Container(
        height: 181.h,
        width: 1.sw,
        decoration: BoxDecoration(
          color: ColorConstants.cardColor,
          borderRadius: BorderRadius.circular(
            16.r,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(
            20.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        ImageConstants.locationSvg,
                        height: 16.h,
                        width: 16.w,
                      ),
                      4.horizontalSpace,
                      Text(
                        emergencyCardDataModel.address,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: ColorConstants.dangerColor,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '${emergencyCardDataModel.peopleCount}+ Attending',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.primaryColor,
                    ),
                  ),
                ],
              ),
              16.verticalSpace,
              Text(
                emergencyCardDataModel.title,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.cardTextColor,
                ),
              ),
              4.verticalSpace,
              Text(
                emergencyCardDataModel.subtitle,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorConstants.cardTextColor,
                  height: 22.sp / 14.sp,
                ),
              ),
              16.verticalSpace,
              AppButton(
                height: 40.h,
                width: 140.w,
                text: 'More details',
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    AppRouter.emergencyDetailScreen,
                    arguments: emergencyCardDataModel,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
