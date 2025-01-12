import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/widgets/custom_app_bar.dart';
import 'package:care_share_nepal/widgets/app_button.dart';
import 'package:dotted_border/dotted_border.dart';

class UploadDigasterScreen extends StatefulWidget {
  const UploadDigasterScreen({super.key});

  @override
  State<UploadDigasterScreen> createState() => _UploadDigasterScreenState();
}

class _UploadDigasterScreenState extends State<UploadDigasterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              isCheckOut: true,
              title: 'Report Disaster',
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    children: [
                      58.verticalSpace,
                      DashBorderContainer(),
                      16.verticalSpace,
                      Text('Or'),
                      16.verticalSpace,
                      AppIconButton(),
                      40.verticalSpace,
                      ImageUploadProgressCard(
                        imageName: 'Image 1',
                        progress: 0.6,
                        size: 2.5,
                        status: 'Paused',
                      ),
                      8.verticalSpace,
                      ImageUploadProgressCard(
                        imageName: 'Image 2',
                        progress: 0.4,
                        size: 1.5,
                        status: 'Uploading',
                      ),
                      30.verticalSpace,
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24.w,
                right: 24.w,
                bottom: 36.h,
              ),
              child: AppButton(
                text: 'Update Disaster',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageUploadProgressCard extends StatelessWidget {
  const ImageUploadProgressCard({
    required this.imageName,
    required this.progress,
    required this.size,
    required this.status,
    super.key,
  });

  final String imageName;
  final double progress;
  final double size;
  final String status;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 89.h,
      width: 1.sw,
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 12.h,
      ),
      decoration: BoxDecoration(
        color: ColorConstants.backgroundColor,
        border: Border.all(
          color: ColorConstants.dashboardColor,
        ),
        borderRadius: BorderRadius.circular(
          12.r,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 57.h,
            height: 57.h,
            decoration: BoxDecoration(
              color: ColorConstants.primaryColor,
              borderRadius: BorderRadius.circular(
                12.r,
              ),
            ),
          ),
          14.horizontalSpace,
          ImageProgressBar(
            imageName: imageName,
            progress: progress,
            size: size,
            status: status,
          ),
          4.horizontalSpace,
          Padding(
            padding: EdgeInsets.only(
              bottom: 12.h,
            ),
            child: SvgPicture.asset(
              ImageConstants.closeSvg,
              color: ColorConstants.disabledColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 12.h,
            ),
            child: SvgPicture.asset(
              ImageConstants.pauseSvg,
              color: ColorConstants.disabledColor,
            ),
          ),
        ],
      ),
    );
  }
}

class ImageProgressBar extends StatelessWidget {
  const ImageProgressBar({
    required this.imageName,
    required this.progress,
    required this.size,
    required this.status,
    super.key,
  });

  final String imageName;
  final double progress;
  final double size;
  final String status;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          16.horizontalSpace,
          Text(imageName),
          4.verticalSpace,
          Expanded(
            child: SizedBox(
              // width: 154.w, // Adjust width as needed
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  LinearProgressIndicator(
                    value: progress, // Replace with actual progress value
                    backgroundColor: ColorConstants.progressBarBackgroundColor,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      ColorConstants.progressBarColor,
                    ),
                  ),
                  4.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Paused',
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: ColorConstants.disabledColor,
                        ),
                      ),
                      Text(
                        '${size.toStringAsFixed(2)} MB',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: ColorConstants.cardTextColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 174.w,
      height: 48.h,
      decoration: BoxDecoration(
        color: ColorConstants.primaryColor,
        borderRadius: BorderRadius.circular(
          32.r,
        ),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
            ),
            8.horizontalSpace,
            Text(
              'Use Camera',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DashBorderContainer extends StatelessWidget {
  const DashBorderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('tapped');
      },
      child: DottedBorder(
        color: ColorConstants.dashboardColor,
        strokeWidth: 1, // Increased stroke width for longer dashes
        dashPattern: [10, 10], // Increased dash length and gap
        borderType: BorderType.RRect,
        // radius: Radius.circular(12.r),
        padding: EdgeInsets.symmetric(
          horizontal: 4.w,
          vertical: 36.h,
        ),
        child: Container(
          // height: 200.h,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 24.w),
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.upload_file_outlined,
                size: 48.h,
                color: ColorConstants.primaryColor,
              ),
              8.verticalSpace,
              Text(
                'Browse existing images from your mobile device.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.cardTextColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
