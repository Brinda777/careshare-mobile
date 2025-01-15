import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/feature/donate_item/data/model/donate_item_model.dart';
import 'package:care_share_nepal/feature/donate_item/presentation/logic/donate_item_cubit.dart';
import 'package:care_share_nepal/widgets/app_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemDetailsBottomSheet extends StatefulWidget {
  final DonateItemModel item;

  const ItemDetailsBottomSheet({super.key, required this.item});

  @override
  State<ItemDetailsBottomSheet> createState() => _ItemDetailsBottomSheetState();
}

class _ItemDetailsBottomSheetState extends State<ItemDetailsBottomSheet> {
  int quantity = 1;

  @override
  void initState() {
    super.initState();
    // Check if item exists in cart and set initial quantity
    final cartItem = context.read<DonateItemCubit>().findItemInCart(
          itemId: widget.item.id,
        );
    if (cartItem != null) {
      quantity = cartItem.quantity;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            widget.item.image,
            height: 120.h,
            fit: BoxFit.contain,
          ),
          16.verticalSpace,
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            decoration: BoxDecoration(
              color: ColorConstants.backgroundColor,
              border: Border.all(
                color: ColorConstants.cardBorderColor,
              ),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              children: [
                Text(
                  widget.item.title,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                8.verticalSpace,
                Text(
                  'Rs. ${widget.item.price}',
                  style: TextStyle(
                    color: ColorConstants.dangerColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                16.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        if (quantity > 1) {
                          setState(() => quantity--);
                        }
                      },
                      icon: const Icon(
                        Icons.remove_circle_outline,
                        color: ColorConstants.disabledColor,
                      ),
                    ),
                    SizedBox(
                      width: 25.w,
                      child: Text(
                        quantity.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () => setState(() => quantity++),
                      icon: const Icon(
                        Icons.add_circle_outline,
                        color: ColorConstants.disabledColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          25.verticalSpace,
          Divider(
            color: ColorConstants.cardBorderColor,
          ),
          25.verticalSpace,
          Row(
            children: [
              Expanded(
                child: AppButton(
                  buttonColor: ColorConstants.primaryColor,
                  text: 'Donate Now',
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(
                      context,
                      AppRouter.checkOutScreen,
                    );
                  },
                ),
              ),
              16.horizontalSpace,
              Expanded(
                child: AppButton(
                  buttonColor: ColorConstants.cardButtonColor,
                  text: 'Add to your Cart',
                  onPressed: () {
                    context.read<DonateItemCubit>().onAddToCart(
                          widget.item.copyWith(
                            quantity: quantity,
                          ),
                        );
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Item has been added to the cart.',
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
          25.verticalSpace,
        ],
      ),
    );
  }
}
