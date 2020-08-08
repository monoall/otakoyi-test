import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otakoyi_test/styling/app_colors.dart';
import 'package:otakoyi_test/styling/app_text_styles.dart';

class BottomDrawer extends StatefulWidget {
  @override
  _BottomDrawerState createState() => _BottomDrawerState();
}

class _BottomDrawerState extends State<BottomDrawer> {
  int _indexSelected = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _indexSelected,
      onTap: (value) => setState(() => _indexSelected = value),
      selectedFontSize: 12,
      unselectedFontSize: 12,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text('Search'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle_outline),
          title: Text('Refer'),
        ),
        BottomNavigationBarItem(
          icon: Stack(
            clipBehavior: Clip.none,
            children: [
              Icon(Icons.mail_outline),
              Positioned(
                right: -7,
                top: 0,
                child: Container(
                  width: 12,
                  height: 12,
                  alignment: Alignment.center,
                  child: Text(
                    '11',
                    style: AppTextStyles.notificationCounter.copyWith(color: AppColors.white),
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.green,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          title: Text('Massages'),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/ic_profile.svg',
            color: AppColors.darkBlue.withOpacity(0.38),
          ),
          title: Text('Profile'),
          activeIcon: SvgPicture.asset(
            'assets/ic_profile.svg',
            color: AppColors.darkBlue,
          ),
        ),
      ],
    );
  }
}
