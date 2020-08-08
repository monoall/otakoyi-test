import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otakoyi_test/styling/app_colors.dart';
import 'package:otakoyi_test/styling/app_text_styles.dart';

class ListPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 308,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/img_placeholder.svg',
            height: 120,
            width: 118.13,
          ),
          SizedBox(height: 32),
          Text('Create your\nfirst case',
              textAlign: TextAlign.center,
              style: AppTextStyles.headline2.copyWith(color: AppColors.darkBlue60)),
        ],
      ),
    );
  }
}
