import 'package:flutter/material.dart';
import 'package:otakoyi_test/styling/app_colors.dart';
import 'package:otakoyi_test/styling/app_text_styles.dart';
import 'package:otakoyi_test/tools/always_disabled_focus_node.dart';

class DropdownField extends StatefulWidget {
  final List<String> values;
  final String defaultValue;
  final String label;
  final Function(String) onChose;

  const DropdownField({Key key, this.values, this.defaultValue, this.label, this.onChose}) : super(key: key);

  @override
  _DropdownFieldState createState() => _DropdownFieldState();
}

class _DropdownFieldState extends State<DropdownField> {
  TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();

    _controller.text = widget.defaultValue;

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      readOnly: true,
      focusNode: AlwaysDisabledFocusNode(),
      decoration: InputDecoration(
        labelText: widget.label,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: _buildSuffix(),
        ),
      ),
      style: AppTextStyles.subtitle1.copyWith(color: AppColors.darkBlue),
    );
  }

  Widget _buildSuffix() {
    return DropdownButton<String>(
      items: widget.values.map(_buildDropDownItem).toList(),
      onChanged: (value) {
        _controller.text = value;
        if (widget.onChose != null) widget.onChose(value);
      },
      icon: Icon(Icons.arrow_drop_down, color: AppColors.darkBlue),
      isExpanded: false,
      underline: SizedBox(),
    );
  }

  DropdownMenuItem<String> _buildDropDownItem(String value) => DropdownMenuItem<String>(
        value: value,
        child: Text(
          value,
          style: AppTextStyles.subtitle1.copyWith(color: AppColors.darkBlue),
        ),
      );
}
