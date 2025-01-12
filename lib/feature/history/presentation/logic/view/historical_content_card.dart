import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/feature/history/data/model/historical_model.dart';

class HistoricalContentCard extends StatelessWidget {
  const HistoricalContentCard({
    super.key,
    required this.historicalModel,
  });
  final HistoricalModel historicalModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              historicalModel.title,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              historicalModel.duration,
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
          historicalModel.description,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
