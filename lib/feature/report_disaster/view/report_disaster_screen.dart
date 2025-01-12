import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/widgets/custom_app_bar.dart';
import 'package:care_share_nepal/widgets/app_button.dart';
import 'package:care_share_nepal/widgets/app_drop_down_field.dart';
import 'package:care_share_nepal/widgets/app_text_field.dart';

class ReportDisasterFormBaseView extends StatefulWidget {
  const ReportDisasterFormBaseView({super.key});

  @override
  State<ReportDisasterFormBaseView> createState() =>
      _ReportDisasterFormBaseViewState();
}

class _ReportDisasterFormBaseViewState
    extends State<ReportDisasterFormBaseView> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _contactNumberController =
      TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _disasterInfoController = TextEditingController();
  final TextEditingController _provinceController = TextEditingController();
  final TextEditingController _districtController = TextEditingController();
  final TextEditingController _municipalityController = TextEditingController();
  final TextEditingController _wardController = TextEditingController();
  final TextEditingController _emergencyLevelController =
      TextEditingController();

  @override
  void dispose() {
    _fullNameController.dispose();
    _contactNumberController.dispose();
    _addressController.dispose();
    _disasterInfoController.dispose();
    _provinceController.dispose();
    _districtController.dispose();
    _municipalityController.dispose();
    _wardController.dispose();
    _emergencyLevelController.dispose();
    super.dispose();
  }

  final List<String> provinces = [
    'Bagmati',
    'Gandaki',
    'Karnali',
    'Koshi',
    'Lumbini',
    'Madesh',
    'Sudurpashchim',
  ];

  final List<String> disasterTypes = [
    'Landslide',
    'Flood',
    'Earthquake',
    'Fire',
    'Drought',
    'Storm',
    'Avalanche',
    'Epidemic',
    'Industrial Accident',
    'Building Collapse',
  ];
  final List<String> districts = [
    'Taplejung', 'Panchthar', 'Ilam', 'Jhapa', 'Morang', 'Sunsari', // Koshi
    'Kathmandu', 'Bhaktapur', 'Lalitpur', 'Makwanpur', 'Chitwan', // Bagmati
    'Kaski', 'Tanahu', 'Syangja', 'Gorkha', 'Lamjung', // Gandaki
    // Add more districts as needed
  ];

  final List<String> municipalities = [
    // Example municipalities
    'Kathmandu Metropolitan', 'Lalitpur Metropolitan', 'Pokhara Metropolitan',
    'Bharatpur Metropolitan', 'Biratnagar Metropolitan',
    'Birgunj Metropolitan', 'Butwal Sub-Metropolitan',
    'Dharan Sub-Metropolitan', 'Itahari Sub-Metropolitan',
    // Add more municipalities as needed
  ];

  final List<String> wardNumbers =
      List.generate(32, (index) => (index + 1).toString());

  final List<String> emergencyLevels = [
    'Catastrophic', // Level 5 - Maximum severity
    'Critical', // Level 4 - Severe impact
    'Moderate', // Level 3 - Significant impact
    'Minor', // Level 2 - Limited impact
    'Low', // Level 1 - Minimal impact
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
            children: [
              CustomAppBar(
                isCheckOut: true,
                title: 'Report Disaster',
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
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
                                controller: _fullNameController,
                              ),
                              16.verticalSpace,
                              AppTextField(
                                labelText: 'Contact Number',
                                keyBoardType: TextInputType.number,
                                controller: _contactNumberController,
                              ),
                              16.verticalSpace,
                              AppTextField(
                                labelText: 'Address',
                                controller: _addressController,
                              ),
                              16.verticalSpace,
                              AppDropdownField(
                                labelText: 'Disaster information    ',
                                controller: _disasterInfoController,
                                hintText: 'Disaster information',
                                options: disasterTypes,
                                onChanged: (value) {
                                  _disasterInfoController.text = value;
                                },
                              ),
                              16.verticalSpace,
                              Row(
                                children: [
                                  Expanded(
                                    child: AppDropdownField(
                                      labelText: 'State/Province',
                                      controller: _provinceController,
                                      hintText: 'State/Province',
                                      options: provinces,
                                      onChanged: (value) {
                                        _provinceController.text = value;
                                      },
                                    ),
                                  ),
                                  16.horizontalSpace,
                                  Expanded(
                                    child: AppDropdownField(
                                      labelText: 'District',
                                      controller: _districtController,
                                      hintText: 'District',
                                      options: districts,
                                      onChanged: (value) {
                                        _districtController.text = value;
                                      },
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
                                      controller: _municipalityController,
                                      hintText: 'Municipality',
                                      options: municipalities,
                                      onChanged: (value) {
                                        _municipalityController.text = value;
                                      },
                                    ),
                                  ),
                                  16.horizontalSpace,
                                  Expanded(
                                    child: AppDropdownField(
                                      labelText: 'Ward No.',
                                      controller: _wardController,
                                      hintText: 'Ward No.',
                                      options: wardNumbers,
                                      onChanged: (value) {
                                        _wardController.text = value;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              16.verticalSpace,
                              AppDropdownField(
                                labelText: 'Emergency Level',
                                controller: _emergencyLevelController,
                                hintText: 'Emergency Level',
                                options: emergencyLevels,
                                onChanged: (value) {
                                  _emergencyLevelController.text = value;
                                },
                              ),
                              100.verticalSpace,
                            ],
                          ),
                        ),
                      ),
                    ],
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
                  text: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      AppRouter.uploadDigasterScreen,
                    );
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
