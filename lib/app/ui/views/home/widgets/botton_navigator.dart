import 'package:app_find_house/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottonNavigator extends StatelessWidget {
  const BottonNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const itemsBottonNavigation = [
      'assets/icons/find_home.svg',
      'assets/icons/heart.svg',
      'assets/icons/location.svg',
      'assets/icons/message.svg',
    ];
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: kBottomNavigationBarHeight * 1.1,
        margin: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 30.h,
        ),
        decoration: BoxDecoration(
          color: AppColors.blueDark,
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: Row(
          children: itemsBottonNavigation.map((item) {
            final index = itemsBottonNavigation.indexOf(item);
            return Expanded(
              child: Material(
                color: Colors.transparent,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  child: SvgPicture.asset(
                    item,
                    width: index == 0 ? 20.w : 18.w,
                    color: index == 0 ? AppColors.cyan : Colors.white54,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
