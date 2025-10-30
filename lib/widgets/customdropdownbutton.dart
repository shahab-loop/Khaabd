import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';
import 'package:khaabd/screens/home_screen/controller/homeScreen_controller.dart';


class CustomDropdown extends StatelessWidget {
  CustomDropdown({super.key});

  final HomeScreenController controller = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: ThemeManager.secondaryColor,
          width: 1,
        ),
      ),
      child: Obx(
            () => DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: controller.selectedItem.value.isEmpty
                ? null
                : controller.selectedItem.value,
            hint: const Text("Select Item"),
            isExpanded: true,
            isDense: false,
            alignment: AlignmentDirectional.bottomEnd,
            icon:  Icon(Icons.arrow_drop_down, color: ThemeManager.primaryColor),
            dropdownColor: ThemeManager.white,
            items: controller.items.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (newValue) {
              controller.selectedItem.value = newValue!;
            },
          ),
        ),
      ),
    );
  }
}
