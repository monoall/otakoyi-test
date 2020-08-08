import 'package:flutter/material.dart';
import 'package:otakoyi_test/styling/app_colors.dart';
import 'package:otakoyi_test/styling/app_text_styles.dart';

class CounterIcon extends StatelessWidget {
  final int value;
  final Widget icon;
  final Function action;
  final double top;
  final double right;

  CounterIcon({Key key, this.value, this.icon, this.action, this.right, this.top}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        IconButton(
          icon: icon,
          onPressed: action,
        ),
        Positioned(
          top: top ?? 15,
          right: right ?? 9,
          child: Container(
            width: 12,
            height: 12,
            alignment: Alignment.center,
            child: Text(
              value.toString(),
              style: AppTextStyles.notificationCounter,
            ),
            decoration: BoxDecoration(
              color: AppColors.green,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
