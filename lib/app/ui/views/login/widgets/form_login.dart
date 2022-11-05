import 'package:app_find_house/app/ui/components/buttons/btn_primary.dart';
import 'package:app_find_house/app/ui/components/textfield/input_text.dart';
import 'package:app_find_house/app/ui/views/login/login_controller.dart';
import 'package:app_find_house/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FormLogin extends GetView<LoginController> {
  const FormLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return Padding(
          padding: EdgeInsets.only(bottom: constraint.maxHeight * .1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Welcome",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: AppColors.blueDark,
                      fontWeight: FontWeight.w900,
                    ),
              ),
              Text(
                "Login form enjoy findhome",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle2?.copyWith(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              SizedBox(height: 50.h),
              InputText(
                iconPrefix: Icons.email_outlined,
                iconColor: AppColors.light,
                border: InputBorder.none,
                keyboardType: TextInputType.emailAddress,
                labelText: "Email",
                filled: false,
                enabledBorderColor: Colors.black26,
                focusedBorderColor: AppColors.cyan,
                fontSize: 14.0,
                fontColor: Colors.black45,
                onChanged: (value) => controller.email,
              ),
              SizedBox(height: 20.h),
              InputText(
                iconPrefix: Icons.lock,
                iconColor: AppColors.light,
                border: InputBorder.none,
                keyboardType: TextInputType.text,
                labelText: "Password",
                filled: false,
                obscureText: true, //controller.isObscureText.value,
                maxLines: 1,
                enabledBorderColor: Colors.black26,
                focusedBorderColor: AppColors.cyan,
                fontSize: 14.0,
                fontColor: Colors.black45,
                suffixIcon: const Icon(
                  Icons.visibility_off_rounded,
                  color: AppColors.light,
                ),
                onChanged: (value) => controller.password,
              ),
              /* Obx(
                () => InputText(
                  iconPrefix: Icons.lock,
                  iconColor: AppColors.light,
                  border: InputBorder.none,
                  keyboardType: TextInputType.text,
                  labelText: "Password",
                  filled: false,
                  obscureText: controller.isObscureText.value,
                  maxLines: 1,
                  enabledBorderColor: Colors.black26,
                  focusedBorderColor: AppColors.cyan,
                  fontSize: 14.0,
                  fontColor: Colors.black45,
                  suffixIcon: GestureDetector(
                    onTap: controller.showPassword,
                    child: controller.isObscureText.value
                        ? const Icon(
                            Icons.visibility_off_rounded,
                            color: AppColors.light,
                          )
                        : const Icon(
                            Icons.visibility,
                            color: AppColors.light,
                          ),
                  ),
                  onChanged: controller.onChangePassword,
                ),
              ), */
              SizedBox(height: 30.h),
              BtnPrimary(
                title: "Sign in",
                onPressed: controller.doAuth,
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: Text(
                      "Forgot password",
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          ?.copyWith(color: Colors.black54),
                    ),
                  ),
                  GestureDetector(
                    onTap: null, //controller.goToRegister,
                    child: Text(
                      "Create new account",
                      style: Theme.of(context).textTheme.subtitle2?.copyWith(
                          color: AppColors.blueDark,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
