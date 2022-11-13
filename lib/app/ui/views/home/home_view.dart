import 'package:app_find_house/app/ui/components/titles/content_title.dart';
import 'package:app_find_house/app/ui/views/home/home_controller.dart';
import 'package:app_find_house/app/ui/views/home/widgets/botton_navigator.dart';
import 'package:app_find_house/app/ui/views/home/widgets/category.dart';
import 'package:app_find_house/app/ui/views/home/widgets/header.dart';
import 'package:app_find_house/app/ui/views/home/widgets/houses.dart';
import 'package:app_find_house/app/ui/views/home/widgets/search.dart';
import 'package:app_find_house/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Scaffold(
        backgroundColor: AppColors.background,
        body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Positioned.fill(
                child: CustomScrollView(
                  slivers: [
                    Header(),
                    Search(),
                    Category(),
                    const SliverToBoxAdapter(
                      child: ContentTitle(
                        title: "Nearby to you",
                        otherTitle: "View more",
                        showOptionMore: true,
                      ),
                    ),
                    Houses()
                  ],
                ),
              ),
              const BottonNavigator()
            ],
          ),
        ),
      ),
    );
  }
}
