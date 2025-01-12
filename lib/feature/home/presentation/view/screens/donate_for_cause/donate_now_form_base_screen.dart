import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/feature/donate_item/presentation/logic/donate_item_cubit.dart';
import 'package:care_share_nepal/feature/home/presentation/logic/donation_cubit.dart';
import 'package:care_share_nepal/widgets/custom_app_bar.dart';
import 'package:care_share_nepal/widgets/app_button.dart';
import 'package:care_share_nepal/widgets/app_drop_down_field.dart';
import 'package:care_share_nepal/widgets/app_text_field.dart';
import 'package:care_share_nepal/widgets/payment_method.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DonateNowFormBaseScreen extends StatefulWidget {
  const DonateNowFormBaseScreen({super.key});

  @override
  State<DonateNowFormBaseScreen> createState() =>
      _DonateNowFormBaseScreenState();
}

class _DonateNowFormBaseScreenState extends State<DonateNowFormBaseScreen> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _contactNumberController =
      TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _donationForController = TextEditingController();

  final List<String> cities = [
    'Balaju',
    'Baneshwor',
    'Budhanilkantha',
    'Chabahil',
    'Kalimati',
  ];

  final List<String> donationFor = [
    'Education Support',
    'Healthcare Assistance',
    'Food and Nutrition',
    'Emergency Relief',
    'Community Development',
  ];

  @override
  void dispose() {
    _fullNameController.dispose();
    _contactNumberController.dispose();
    _cityController.dispose();
    _amountController.dispose();
    _donationForController.dispose();
    super.dispose();
  }

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
                title: 'Donate Now',
              ),
              BlocBuilder<DonationCubit, DonationState>(
                builder: (context, state) {
                  return Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          34.verticalSpace,
                          Text(
                            '"Turn compassion into action. Donate now."',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: ColorConstants.cardTextColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          8.verticalSpace,
                          Padding(
                            padding: EdgeInsets.only(
                              left: 24.w,
                              right: 24.w,
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
                                  Row(
                                    children: [
                                      Expanded(
                                        child: AppDropdownField(
                                          onChanged: (value) {
                                            _cityController.text = value;
                                          },
                                          labelText: 'City',
                                          controller: _cityController,
                                          hintText: 'City',
                                          options: cities,
                                        ),
                                      ),
                                      16.horizontalSpace,
                                      Expanded(
                                        child: AppTextField(
                                          labelText: 'Amount',
                                          keyBoardType: TextInputType.number,
                                          controller: _amountController,
                                          prefixText: 'Rs ',
                                          suffixIcon: Icon(
                                            Icons.info_outline,
                                            color:
                                                ColorConstants.containerColor,
                                          ),
                                          hintText: 'Amount',
                                        ),
                                      ),
                                    ],
                                  ),
                                  16.verticalSpace,
                                  AppDropdownField(
                                    labelText: 'Donation for',
                                    controller: _donationForController,
                                    hintText: 'Donation for',
                                    options: donationFor,
                                    onChanged: (value) {
                                      _donationForController.text = value;
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          24.verticalSpace,
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 24.w,
                            ),
                            child: PaymentMethodWidget(),
                          ),
                          32.verticalSpace,
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 24.w,
                            ),
                            child: AppButton(
                              text: 'Pay Now',
                              isLoading: state.isLoading,
                              onPressed: () {
                                if (state.activePaymentMethod ==
                                    PaymentMethod.esewa) {
                                  context
                                      .read<DonationCubit>()
                                      .initiateEsewaPayment(
                                        productId: '1d71jd81',
                                        productName: 'Product One',
                                        productPrice: '20',
                                        context: context,
                                      );
                                }
                              },
                            ),
                          ),
                          32.verticalSpace,
                        ],
                      ),
                    ),
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
