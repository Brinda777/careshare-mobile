import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/feature/donate_item/data/model/donate_item_model.dart';
import 'package:care_share_nepal/feature/donate_item/presentation/logic/donate_item_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckoutItemCard extends StatelessWidget {
  const CheckoutItemCard({
    super.key,
    required this.cartItem,
  });
  final DonateItemModel cartItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 89.h,
      width: 1.sw,
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 24.w,
        vertical: 8.h,
      ),
      decoration: BoxDecoration(
        color: ColorConstants.backgroundColor,
        border: Border.all(
          color: ColorConstants.cardBorderColor,
        ),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                cartItem.image,
                height: 65.h,
                width: 65.w,
              ),
              14.horizontalSpace,
              Flexible(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      cartItem.title,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: ColorConstants.cardTextColor,
                      ),
                    ),
                    4.verticalSpace,
                    Text(
                      '${cartItem.price}/ ${cartItem.unit}',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: ColorConstants.dangerColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Flexible(
            flex: 2,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    context.read<DonateItemCubit>().onDecreaseQuantity(
                          cartItem.id,
                        );
                  },
                  icon: const Icon(
                    Icons.remove_circle_outline,
                    color: ColorConstants.disabledColor,
                  ),
                ),
                SizedBox(
                  width: 25.w,
                  child: Text(
                    cartItem.quantity.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    context.read<DonateItemCubit>().onIncreaseQuantity(
                          cartItem.id,
                        );
                  },
                  icon: const Icon(
                    Icons.add_circle_outline,
                    color: ColorConstants.disabledColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
