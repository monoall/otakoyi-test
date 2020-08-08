import 'package:flutter/material.dart';
import 'package:otakoyi_test/styling/app_colors.dart';
import 'package:otakoyi_test/styling/app_text_styles.dart';

class LightButton extends StatelessWidget {
  final Color _borderColor;
  final Color _textColor;
  final Function action;
  final String label;

  LightButton.red({this.label, this.action})
      : _borderColor = AppColors.red,
        _textColor = AppColors.red;

  LightButton.grey({this.action, this.label})
      : _borderColor = AppColors.grey,
        _textColor = AppColors.darkBlue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      child: OutlineButton(
        borderSide: BorderSide(
          color: _borderColor,
        ),
        highlightedBorderColor: _borderColor,
        color: AppColors.white,
        onPressed: action,
        child: Text(label, style: AppTextStyles.subtitle1.copyWith(color: _textColor)),
      ),
    );
  }
}
