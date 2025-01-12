import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/feature/donate_item/presentation/logic/donate_item_cubit.dart';
import 'package:care_share_nepal/widgets/outline_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentMethodWidget extends StatefulWidget {
  const PaymentMethodWidget({super.key});

  @override
  State<PaymentMethodWidget> createState() => _PaymentMethodWidgetState();
}

class _PaymentMethodWidgetState extends State<PaymentMethodWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocSelector<DonateItemCubit, DonateItemState, PaymentMethod>(
      selector: (state) => state.activePaymentMethod,
      builder: (context, activePaymentMethod) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Choose payment method',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            16.verticalSpace,
            OutlineButton(
              image: ImageConstants.esewa,
              text: 'E-sewa',
              isSelected: activePaymentMethod == PaymentMethod.esewa,
              onTap: () {
                context.read<DonateItemCubit>().changePaymentMethod(
                      PaymentMethod.esewa,
                    );
              },
            ),
            16.verticalSpace,
            OutlineButton(
              image: ImageConstants.khalti,
              text: 'Khalti',
              isSelected: activePaymentMethod == PaymentMethod.khalti,
              onTap: () {
                context.read<DonateItemCubit>().changePaymentMethod(
                      PaymentMethod.khalti,
                    );
              },
            ),
          ],
        );
      },
    );
  }
}
