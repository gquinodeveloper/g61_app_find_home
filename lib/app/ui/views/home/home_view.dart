import 'package:app_find_house/app/ui/views/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "${controller.userFullName}",
                  style: const TextStyle(fontSize: 30.0),
                ),
              ),
              Obx(
                () => Text(
                  "${controller.address}",
                  style: const TextStyle(fontSize: 20.0),
                ),
              ),
              TextButton(
                onPressed: controller.signOut,
                child: const Text("Cerrar Sesión"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
