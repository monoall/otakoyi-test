import 'package:flutter/material.dart';
import 'package:otakoyi_test/styling/app_colors.dart';
import 'package:otakoyi_test/styling/app_text_styles.dart';

class AppInputField extends StatefulWidget {
  final Widget suffixIcon;
  final String labelText;

  const AppInputField({Key key, this.suffixIcon, this.labelText}) : super(key: key);

  @override
  _AppInputFieldState createState() => _AppInputFieldState();
}

class _AppInputFieldState extends State<AppInputField> {
  FocusNode _focusNode;
  Color _labelColor = AppColors.darkBlue38;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode()
      ..addListener(() => setState(() {
            _labelColor = _focusNode.hasFocus ? AppColors.gold : AppColors.darkBlue38;
          }));
  }

  @override
  void dispose() {
    _focusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: _focusNode,
      decoration: InputDecoration(
        labelText: widget.labelText,
        suffixIcon: widget.suffixIcon,
        labelStyle: AppTextStyles.label.copyWith(color: _labelColor),
      ),
      style: AppTextStyles.subtitle1.copyWith(color: AppColors.darkBlue),
    );
  }
}
