import 'package:app_find_house/app/ui/views/home/home_controller.dart';
import 'package:app_find_house/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: AspectRatio(
        aspectRatio: 16 / 5,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              _SliverAppBar(),
              SizedBox(height: MediaQuery.of(context).size.height * .03),
              _WelcomeUser(),
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBar extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          foregroundImage: NetworkImage(
              "https://i.pinimg.com/474x/98/6d/69/986d69105df94498ea96e53a7495de19.jpg"),
        ),
        SizedBox(width: 30.w),
        Obx(
          () => Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  WidgetSpan(
                    child: Padding(
                      padding: EdgeInsets.only(right: 10..w),
                      child: SvgPicture.asset(
                        "assets/icons/location.svg",
                        width: 12.w,
                      ),
                    ),
                    alignment: PlaceholderAlignment.middle,
                  ),
                  TextSpan(
                    text: "${controller.address}",
                    style: Theme.of(context).textTheme.button?.copyWith(
                        color: AppColors.blueDark, fontWeight: FontWeight.w600),
                  ),
                  const WidgetSpan(
                    child: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: AppColors.blueDark,
                    ),
                    alignment: PlaceholderAlignment.middle,
                  ),
                ],
              ),
            ),
          ),
        ),
        SvgPicture.asset(
          "assets/icons/bell.svg",
          width: 18.w,
        ),
        SizedBox(width: 10.w),
        SvgPicture.asset(
          "assets/icons/setting.svg",
          width: 18.w,
        )
      ],
    );
  }
}

class _WelcomeUser extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Obx(
          () => Text(
            "Hi ${controller.userFullName}",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.black38, fontWeight: FontWeight.w200),
          ),
        ),
        Text(
          "Start Looking for u house",
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: AppColors.blueDark, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
