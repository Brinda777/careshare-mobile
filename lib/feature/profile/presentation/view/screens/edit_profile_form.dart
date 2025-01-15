import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/widgets/app_button.dart';
import 'package:care_share_nepal/widgets/app_drop_down_field.dart';
import 'package:care_share_nepal/widgets/app_text_field.dart';
import 'package:care_share_nepal/widgets/custom_app_bar.dart';
import 'package:care_share_nepal/feature/profile/data/dummy/profile_dummy_data.dart';

class EditProfileForm extends StatefulWidget {
  const EditProfileForm({super.key});

  @override
  State<EditProfileForm> createState() => _EditProfileFormState();
}

class _EditProfileFormState extends State<EditProfileForm> {
  final _formKey = GlobalKey<FormState>();

  // Controllers
  final fullNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();
  final genderController = TextEditingController();
  final dobController = TextEditingController();
  final skillController = TextEditingController();
  final addressController = TextEditingController();
  final stateRegionController = TextEditingController();
  final cityController = TextEditingController();
  final zipCodeController = TextEditingController();

  // Sample skills list
  final List<String> skills = [
    'Flutter Development',
    'Web Development',
    'UI/UX Design',
    'Project Management',
    'Digital Marketing',
    'Content Writing',
  ];

  // Gender options
  final List<String> genders = ['Male', 'Female', 'Other'];

  String _formatDate(DateTime date) {
    // List of month names
    final months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];

    return "${date.day} ${months[date.month - 1]}, ${date.year}";
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        dobController.text = _formatDate(picked);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    // Initialize controllers with dummy data and format the date
    fullNameController.text = dummyProfile.fullName;
    phoneNumberController.text = dummyProfile.phoneNumber;
    emailController.text = dummyProfile.email;
    genderController.text = dummyProfile.gender;
    // Convert the dummy date string to DateTime and format it
    final dateParts = dummyProfile.dob.split('-');
    final dummyDate = DateTime(
      int.parse(dateParts[0]), // year
      int.parse(dateParts[1]), // month
      int.parse(dateParts[2]), // day
    );
    dobController.text = _formatDate(dummyDate);
    skillController.text = dummyProfile.skill;
    addressController.text = dummyProfile.address;
    stateRegionController.text = dummyProfile.stateRegion;
    cityController.text = dummyProfile.city;
    zipCodeController.text = dummyProfile.zipCode;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              title: 'Edit Profile',
              isCheckOut: true,
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        24.verticalSpace,
                        AppTextField(
                          controller: fullNameController,
                          labelText: 'Full Name',
                          hintText: 'Enter your full name',
                          validator: (value) => value?.isEmpty ?? true
                              ? 'Please enter your full name'
                              : null,
                        ),
                        SizedBox(height: 16.h),
                        AppTextField(
                          controller: phoneNumberController,
                          labelText: 'Phone Number',
                          hintText: 'Enter your phone number',
                          keyBoardType: TextInputType.phone,
                          validator: (value) => value?.isEmpty ?? true
                              ? 'Please enter your phone number'
                              : null,
                        ),
                        SizedBox(height: 16.h),
                        AppTextField(
                          controller: emailController,
                          labelText: 'Email',
                          hintText: 'Enter your email',
                          keyBoardType: TextInputType.emailAddress,
                          validator: (value) => value?.isEmpty ?? true
                              ? 'Please enter your email'
                              : null,
                        ),
                        SizedBox(height: 16.h),
                        AppDropdownField(
                          controller: genderController,
                          labelText: 'Gender',
                          hintText: 'Select your gender',
                          options: genders,
                        ),
                        SizedBox(height: 16.h),
                        AppTextField(
                          controller: dobController,
                          labelText: 'Date of Birth',
                          hintText: 'Select your date of birth',
                          readOnly: true,
                          suffixIcon: const Icon(
                            Icons.calendar_month_sharp,
                            color: ColorConstants.disabledColor,
                          ),
                          onTap: () => _selectDate(context),
                          validator: (value) => value?.isEmpty ?? true
                              ? 'Please select your date of birth'
                              : null,
                        ),
                        SizedBox(height: 16.h),
                        AppDropdownField(
                          controller: skillController,
                          labelText: 'Skills',
                          hintText: 'Select your primary skill',
                          options: skills,
                        ),
                        SizedBox(height: 16.h),
                        AppTextField(
                          controller: addressController,
                          labelText: 'Address',
                          hintText: 'Enter your address',
                          validator: (value) => value?.isEmpty ?? true
                              ? 'Please enter your address'
                              : null,
                        ),
                        SizedBox(height: 16.h),
                        AppTextField(
                          controller: stateRegionController,
                          labelText: 'State/Region',
                          hintText: 'Enter your state/region',
                          validator: (value) => value?.isEmpty ?? true
                              ? 'Please enter your state/region'
                              : null,
                        ),
                        SizedBox(height: 16.h),
                        AppTextField(
                          controller: cityController,
                          labelText: 'City',
                          hintText: 'Enter your city',
                          validator: (value) => value?.isEmpty ?? true
                              ? 'Please enter your city'
                              : null,
                        ),
                        SizedBox(height: 16.h),
                        AppTextField(
                          controller: zipCodeController,
                          labelText: 'Zip Code',
                          hintText: 'Enter your zip code',
                          keyBoardType: TextInputType.number,
                          validator: (value) => value?.isEmpty ?? true
                              ? 'Please enter your zip code'
                              : null,
                        ),
                        24.verticalSpace,
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 32.w,
                vertical: 16.h,
              ),
              child: AppButton(
                text: 'Edit',
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Handle form submission
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Profile has been updated.',
                        ),
                        backgroundColor: Colors.green,
                        duration: Duration(seconds: 1),
                      ),
                    );
                    Navigator.pop(context);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    fullNameController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    genderController.dispose();
    dobController.dispose();
    skillController.dispose();
    addressController.dispose();
    stateRegionController.dispose();
    cityController.dispose();
    zipCodeController.dispose();
    super.dispose();
  }
}
