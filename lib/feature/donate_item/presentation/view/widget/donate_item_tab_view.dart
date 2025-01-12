import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/feature/donate_item/data/dummy/donate_item_cloth_dummy_data.dart';
import 'package:care_share_nepal/feature/donate_item/data/dummy/donate_item_dummy_data.dart';
import 'package:care_share_nepal/feature/donate_item/data/dummy/donate_item_medicene_data.dart';
import 'package:care_share_nepal/feature/donate_item/data/model/donate_item_model.dart';
import 'package:care_share_nepal/feature/donate_item/presentation/view/widget/item_detail_bottom_sheet.dart';

class DonateItemTabView extends StatefulWidget {
  const DonateItemTabView({
    super.key,
    required this.index,
  });

  final int index;
  @override
  State<DonateItemTabView> createState() => _DonateItemTabViewState();
}

class _DonateItemTabViewState extends State<DonateItemTabView> {
  @override
  Widget build(BuildContext context) {
    switch (widget.index) {
      case 0:
        return ItemsGrideView(
          items: donateItemDummyData,
        );
      case 1:
        return ItemsGrideView(
          items: donateItemClothDummyData,
        );
      case 2:
        return ItemsGrideView(
          items: donateItemMedicineDummyData,
        );
      default:
        return const SizedBox.shrink();
    }
  }
}

class ItemsGrideView extends StatelessWidget {
  const ItemsGrideView({
    super.key,
    required this.items,
  });
  final List<DonateItemModel> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: GridView.builder(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.w,
          mainAxisSpacing: 16.h,
          childAspectRatio: .9,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return GestureDetector(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: ColorConstants.backgroundColor,
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20.r)),
                ),
                builder: (context) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8.h),
                      height: 4.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(2.r),
                      ),
                    ),
                    ItemDetailsBottomSheet(item: item),
                  ],
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: ColorConstants.backgroundColor,
                borderRadius: BorderRadius.circular(12.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 8.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.r),
                        topRight: Radius.circular(8.r),
                      ),
                      child: Image.asset(
                        item.image,
                        height: 100.h,
                        width: 1.sw,
                        fit: BoxFit.contain,
                      ),
                    ),
                    8.verticalSpace,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          'Rs. ${item.price}',
                          style: TextStyle(
                            color: ColorConstants.dangerColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
