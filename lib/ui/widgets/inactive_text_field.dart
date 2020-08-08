import 'package:flutter/material.dart';
import 'package:otakoyi_test/styling/app_colors.dart';
import 'package:otakoyi_test/styling/app_text_styles.dart';
import 'package:otakoyi_test/tools/always_disabled_focus_node.dart';

class InactiveTextField extends StatelessWidget {
  final String label;
  final String suffixText;
  final TextEditingController controller;

  const InactiveTextField({Key key, this.label, this.controller, this.suffixText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      readOnly: true,
      focusNode: AlwaysDisabledFocusNode(),
      decoration: InputDecoration(
        labelText: label,
        suffixText: '%',
        suffixStyle: AppTextStyles.subtitle1.copyWith(color: AppColors.grey),
      ),
      style: AppTextStyles.subtitle1.copyWith(color: AppColors.darkBlue),
    );
  }
}
