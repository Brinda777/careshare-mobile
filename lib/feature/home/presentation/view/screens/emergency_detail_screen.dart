import 'package:care_share_nepal/core/constants/api_constants.dart';
import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/feature/home/data/model/emergency_card_data_model.dart';
import 'package:care_share_nepal/widgets/app_button.dart';

class EmergencyDetailScreen extends StatefulWidget {
  const EmergencyDetailScreen({
    super.key,
    required this.emergencyCardDataModel,
  });
  final EmergencyCardDataModel emergencyCardDataModel;

  @override
  State<EmergencyDetailScreen> createState() => _EmergencyDetailScreenState();
}

class _EmergencyDetailScreenState extends State<EmergencyDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40.h),
            child: DetailScreenAppBar(
              impact: widget.emergencyCardDataModel.impact,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 12.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.w,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.emergencyCardDataModel.title,
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          24.verticalSpace,
                          Image.network(
                            '${ApiEndpoint.BASE_URL}${widget.emergencyCardDataModel.image}',
                            height: 181.h,
                            width: 1.sw,
                            fit: BoxFit.cover,
                          ),
                          24.verticalSpace,
                          Text(
                            widget.emergencyCardDataModel.description,
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: ColorConstants.disabledColor,
                            ),
                          ),
                          15.verticalSpace,
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Location:  ',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: ColorConstants.cardTextColor,
                                  ),
                                ),
                                TextSpan(
                                  text: widget.emergencyCardDataModel.location,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: ColorConstants.disabledColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          8.verticalSpace,
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Funds Raised:  ',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: ColorConstants.cardTextColor,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'Rs. ${widget.emergencyCardDataModel.funds}',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: ColorConstants.disabledColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          32.verticalSpace,
                          AppButton(
                            text: 'Donate items',
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                AppRouter.donateItemScreen,
                              );
                            },
                          ),
                          8.verticalSpace,
                          AppButton(
                            text: 'Became a volunteer',
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                AppRouter.becomeVolunterFormScreen,
                              );
                            },
                          ),
                          8.verticalSpace,
                          AppButton(
                            text: 'Donate for cause',
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                AppRouter.donateNowFormScreen,
                              );
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailScreenAppBar extends StatelessWidget {
  const DetailScreenAppBar({
    super.key,
    required this.impact,
  });

  final String impact;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 20.h,
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
          AppButton(
            height: 30.h,
            width: 138.w,
            text: '$impact',
            buttonColor: ColorConstants.dangerColor,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
