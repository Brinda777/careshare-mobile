import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/feature/donate_item/data/model/donate_item_model.dart';
import 'package:care_share_nepal/feature/donate_item/presentation/logic/donate_item_cubit.dart';
import 'package:care_share_nepal/feature/donate_item/presentation/view/widget/checkout_item_card.dart';
import 'package:care_share_nepal/widgets/custom_app_bar.dart';
import 'package:care_share_nepal/feature/donate_item/presentation/view/widget/spacing_text_widget.dart';
import 'package:care_share_nepal/widgets/app_button.dart';
import 'package:care_share_nepal/widgets/custom_toast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckOutBaseView extends StatefulWidget {
  const CheckOutBaseView({super.key});

  @override
  State<CheckOutBaseView> createState() => _CheckOutBaseViewState();
}

class _CheckOutBaseViewState extends State<CheckOutBaseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              isCheckOut: true,
              title: 'Your Cart',
            ),
            16.verticalSpace,
            Expanded(
              child: BlocSelector<DonateItemCubit, DonateItemState,
                  List<DonateItemModel>?>(
                selector: (state) {
                  return state.cartItems;
                },
                builder: (context, cartItems) {
                  context.read<DonateItemCubit>().calculateTotalAmount();
                  return cartItems?.isEmpty ?? true
                      ? const Center(
                          child: Text('No items in cart'),
                        )
                      : ListView.builder(
                          itemCount: cartItems?.length ?? 0,
                          itemBuilder: (context, index) {
                            return CheckoutItemCard(
                              cartItem: cartItems![index],
                            );
                          },
                        );
                },
              ),
            ),
            BlocSelector<DonateItemCubit, DonateItemState, double>(
              selector: (state) {
                return state.totalAmount;
              },
              builder: (context, totalAmount) {
                return Stack(
                  children: [
                    Container(
                      width: 1.sw,
                      height: 163.h,
                      padding: EdgeInsets.only(
                        left: 22.w,
                        right: 22.w,
                        top: 18.h,
                        bottom: 24.h,
                      ),
                      margin: EdgeInsets.only(
                        left: 24.w,
                        right: 24.w,
                        bottom: 64.h,
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
                            title: 'Total Amount: ',
                            value: 'Rs. ${totalAmount}',
                          ),
                          6.verticalSpace,
                          SpacingTextWidget(
                            title: 'Delivery Fee: ',
                            value: 'Rs. 0',
                          ),
                          18.verticalSpace,
                          Divider(
                            color: ColorConstants.containerColor,
                          ),
                          8.verticalSpace,
                          SpacingTextWidget(
                            title: 'Total: ',
                            value: 'Rs. ${totalAmount}',
                            textColor: ColorConstants.dangerColor,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 32.w,
                          vertical: 24.h,
                        ),
                        child: Column(
                          children: [
                            AppButton(
                              text: 'Checkout',
                              onPressed: () {
                                totalAmount == 0.0
                                    ? CustomToast.show(
                                        context,
                                        'Please add items to cart',
                                      )
                                    : Navigator.pushNamed(
                                        context,
                                        AppRouter.shippingDetailScreen,
                                      );
                              },
                            ),
                            4.verticalSpace,
                            Text(
                              'All taxes included',
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
