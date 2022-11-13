import 'package:app_find_house/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentTitle extends StatelessWidget {
  const ContentTitle({
    Key? key,
    required this.title,
    this.otherTitle = "",
    this.showOptionMore = false,
    this.hMargin = 20.0,
  }) : super(key: key);

  final String title;
  final String otherTitle;
  final bool showOptionMore;
  final double hMargin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: hMargin.w, vertical: 15.h),
      child: Row(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                color: AppColors.blueDark, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          showOptionMore
              ? Text(
                  otherTitle,
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: AppColors.blueDark, fontWeight: FontWeight.bold),
                )
              : const SizedBox(),
          showOptionMore
              ? Container(
                  margin: EdgeInsets.only(left: 2.w),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.blueDark,
                    size: 18.0,
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
