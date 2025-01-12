import 'package:care_share_nepal/core/imports/ui_imports.dart';
import 'package:care_share_nepal/widgets/app_text_field.dart';

class AppDropdownField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final List<String> options;
  final double? maxHeight;
  final Function(String)? onChanged;

  const AppDropdownField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    required this.options,
    this.maxHeight = 250,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final GlobalKey fieldKey = GlobalKey();

    return AppTextField(
      key: fieldKey,
      readOnly: true,
      controller: controller,
      labelText: labelText,
      hintText: hintText,
      onTap: () {
        final renderBox =
            fieldKey.currentContext!.findRenderObject()! as RenderBox;
        final position = renderBox.localToGlobal(Offset.zero);

        showMenu<String>(
          context: context,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: ColorConstants.cardColor,
          constraints: BoxConstraints(
            minWidth: renderBox.size.width,
            maxWidth: renderBox.size.width,
            maxHeight: maxHeight ?? 250,
          ),
          position: RelativeRect.fromLTRB(
            position.dx,
            position.dy + renderBox.size.height - 5,
            position.dx + renderBox.size.width,
            position.dy + renderBox.size.height,
          ),
          items: [
            PopupMenuItem<String>(
              enabled: false,
              child: SizedBox(
                height: maxHeight ?? 250,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: options.map((String value) {
                      return InkWell(
                        onTap: () {
                          Navigator.pop(context, value);
                        },
                        child: Container(
                          height: 40,
                          color: ColorConstants.cardColor,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Container(
                                width: 4,
                                height: 4,
                                margin: const EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorConstants.cardTextColor,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: ColorConstants.cardTextColor,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ],
        ).then((String? selectedValue) {
          if (selectedValue != null) {
            controller.text = selectedValue;
            onChanged?.call(selectedValue);
          }
        });
      },
      suffixIcon: const Icon(
        Icons.keyboard_arrow_down_rounded,
        color: ColorConstants.disabledColor,
      ),
    );
  }
}
