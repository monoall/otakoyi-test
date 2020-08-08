import 'package:flutter/material.dart';
import 'package:otakoyi_test/styling/app_colors.dart';
import 'package:otakoyi_test/styling/app_text_styles.dart';

class CustomChip extends StatelessWidget {
  final bool activeBorder;
  final String title;
  final String value;
  final Widget leadingIcon;

  const CustomChip({Key key, this.activeBorder = false, this.title, this.value, this.leadingIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: _buildDecoration(context),
      height: 29,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          //icon
          if (leadingIcon != null) leadingIcon,
          if (leadingIcon != null) SizedBox(width: 6),
          //title
          if (title != null) Text(title, style: AppTextStyles.caption1.copyWith(color: AppColors.darkBlue60)),
          if (title != null) SizedBox(width: 3),
          //value
          if (value != null)
            Text(value, style: AppTextStyles.caption1.copyWith(color: AppColors.darkBlue)),
        ],
      ),
    );
  }

  Decoration _buildDecoration(BuildContext context) => BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(3)),
        border: Border.all(
          color: activeBorder ? Theme.of(context).accentColor : AppColors.grey,
          width: 1.5,
        ),
      );
}
