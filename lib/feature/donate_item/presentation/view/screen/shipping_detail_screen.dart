import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/feature/donate_item/presentation/logic/donate_item_cubit.dart';
import 'package:care_share_nepal/widgets/custom_app_bar.dart';
import 'package:care_share_nepal/feature/donate_item/presentation/view/widget/spacing_text_widget.dart';
import 'package:care_share_nepal/widgets/app_button.dart';
import 'package:care_share_nepal/widgets/outline_button.dart';
import 'package:care_share_nepal/widgets/payment_method.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShippingDetailScreen extends StatefulWidget {
  const ShippingDetailScreen({super.key});

  @override
  State<ShippingDetailScreen> createState() => _ShippingDetailScreenState();
}

class _ShippingDetailScreenState extends State<ShippingDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              isCheckOut: true,
              title: 'Shipping Details',
            ),
            29.verticalSpace,
            Padding(
              padding: EdgeInsets.only(
                left: 22.w,
                right: 22.w,
                top: 8.h,
                bottom: 24.h,
              ),
              child:
                  BlocSelector<DonateItemCubit, DonateItemState, PaymentMethod>(
                selector: (state) {
                  return state.activePaymentMethod;
                },
                builder: (context, activePaymentMethod) {
                  return Column(mainAxisSize: MainAxisSize.min, children: [
                    Container(
                      width: 1.sw,
                      padding: EdgeInsets.only(
                        left: 22.w,
                        right: 22.w,
                        top: 18.h,
                        bottom: 24.h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(
                          color: ColorConstants.containerColor,
                        ),
                      ),
                      child: Column(
                        children: [
                          SpacingTextWidget(
                            title: 'Full name ',
                            value: 'Brinda Bhattarai',
                          ),
                          16.verticalSpace,
                          SpacingTextWidget(
                            title: 'Address',
                            value: 'Dillibazar, Kathmandu',
                          ),
                          16.verticalSpace,
                          SpacingTextWidget(
                            title: 'Contact number',
                            value: '9866155024',
                          ),
                          16.verticalSpace,
                          SpacingTextWidget(
                            title: 'Email',
                            value: 'brinda.bhattrai99@gmail.com',
                          ),
                        ],
                      ),
                    ),
                    44.verticalSpace,
                    PaymentMethodWidget(),
                    64.verticalSpace,
                    AppButton(
                      text: 'Continue',
                      onPressed: () {
                        context.read<DonateItemCubit>().clearCart();
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          AppRouter.dashboardScreen,
                          (route) => false,
                        );
                      },
                    ),
                  ]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
