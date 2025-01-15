import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/widgets/custom_app_bar.dart';
import 'package:care_share_nepal/widgets/app_button.dart';
import 'package:care_share_nepal/widgets/app_drop_down_field.dart';
import 'package:care_share_nepal/widgets/app_text_field.dart';

class BecomeVolunterFormBaseView extends StatefulWidget {
  const BecomeVolunterFormBaseView({super.key});

  @override
  State<BecomeVolunterFormBaseView> createState() =>
      _BecomeVolunterFormBaseViewState();
}

class _BecomeVolunterFormBaseViewState
    extends State<BecomeVolunterFormBaseView> {
  final List<String> provinces = [
    'Bagmati',
    'Gandaki',
    'Karnali',
    'Koshi',
    'Lumbini',
    'Madesh',
    'Sudurpashchim',
  ];

  final List<String> districts = [
    'Kathmandu',
    'Lalitpur',
    'Bhaktapur',
    'Kavrepalanchok',
    'Chitwan',
  ];

  final List<String> municipalities = [
    'Kathmandu Metropolitan',
    'Lalitpur Metropolitan',
    'Bhaktapur Municipality',
    'Kirtipur Municipality',
    'Madhyapur Thimi',
  ];

  final List<String> cities = [
    'Balaju',
    'Baneshwor',
    'Budhanilkantha',
    'Chabahil',
    'Kalimati',
  ];

  final List<String> skills = [
    'Teaching',
    'Medical Care',
    'Social Work',
    'Counseling',
    'Technical Support',
    'Project Management',
    'Event Organization',
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomAppBar(
                    isCheckOut: true,
                    title: 'Volunteer Form',
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.w,
                      right: 24.w,
                      top: 8.h,
                      bottom: 24.h,
                    ),
                    child: Form(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          32.verticalSpace,
                          AppTextField(
                            labelText: 'Full Name',
                            controller: TextEditingController(),
                          ),
                          16.verticalSpace,
                          AppTextField(
                            labelText: 'Contact Number',
                            keyBoardType: TextInputType.number,
                            controller: TextEditingController(),
                          ),
                          16.verticalSpace,
                          Row(
                            children: [
                              Expanded(
                                child: AppDropdownField(
                                  labelText: 'Address',
                                  controller: TextEditingController(),
                                  hintText: 'State/Province',
                                  options: provinces,
                                ),
                              ),
                              16.horizontalSpace,
                              Expanded(
                                child: AppDropdownField(
                                  labelText: 'District',
                                  controller: TextEditingController(),
                                  hintText: 'District',
                                  options: districts,
                                ),
                              ),
                            ],
                          ),
                          16.verticalSpace,
                          Row(
                            children: [
                              Expanded(
                                child: AppDropdownField(
                                  labelText: 'Municipality',
                                  controller: TextEditingController(),
                                  hintText: 'Municipality',
                                  options: municipalities,
                                ),
                              ),
                              16.horizontalSpace,
                              Expanded(
                                child: AppDropdownField(
                                  labelText: 'City',
                                  controller: TextEditingController(),
                                  hintText: 'City',
                                  options: cities,
                                ),
                              ),
                            ],
                          ),
                          16.verticalSpace,
                          AppDropdownField(
                            labelText: 'Skill you can offer',
                            controller: TextEditingController(),
                            hintText: 'Skill',
                            options: skills,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 24.w,
                  right: 24.w,
                  bottom: 36.h,
                ),
                child: AppButton(
                  text: 'Submit',
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Thank you for being a volunteer.',
                        ),
                        backgroundColor: Colors.green,
                        duration: Duration(seconds: 1),
                      ),
                    );
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
