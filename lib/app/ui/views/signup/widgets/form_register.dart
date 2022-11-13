import 'package:app_find_house/app/ui/components/buttons/btn_primary.dart';
import 'package:app_find_house/app/ui/components/textfield/input_text.dart';
import 'package:app_find_house/app/ui/views/signup/signup_controller.dart';
import 'package:app_find_house/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FormRegister extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hi!",
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline4
              ?.copyWith(color: AppColors.blue, fontWeight: FontWeight.w900),
        ),
        Text(
          "Create a new account",
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: Colors.black38, fontWeight: FontWeight.w400),
        ),
        InputText(
          controller: controller.crtlTextName,
          iconPrefix: Icons.person_outline,
          iconColor: AppColors.light,
          border: InputBorder.none,
          keyboardType: TextInputType.text,
          textCapitalization: TextCapitalization.words,
          validator: null,
          labelText: "Name",
          filled: false,
          enabledBorderColor: Colors.black26,
          focusedBorderColor: AppColors.cyan,
          fontSize: 14.0,
          fontColor: Colors.black45,
        ),
        SizedBox(height: 15.h),
        InputText(
          controller: controller.crtlTextLastName,
          iconPrefix: Icons.bubble_chart_outlined,
          iconColor: AppColors.light,
          border: InputBorder.none,
          keyboardType: TextInputType.text,
          textCapitalization: TextCapitalization.words,
          validator: null,
          labelText: "Last Name",
          filled: false,
          enabledBorderColor: Colors.black26,
          focusedBorderColor: AppColors.cyan,
          fontSize: 14.0,
          fontColor: Colors.black45,
        ),
        SizedBox(height: 15.h),
        InputText(
          controller: controller.crtlTextAddress,
          iconPrefix: Icons.directions_outlined,
          iconColor: AppColors.light,
          border: InputBorder.none,
          keyboardType: TextInputType.text,
          textCapitalization: TextCapitalization.sentences,
          validator: null,
          labelText: "Adress",
          filled: false,
          enabledBorderColor: Colors.black26,
          focusedBorderColor: AppColors.cyan,
          fontSize: 14.0,
          fontColor: Colors.black45,
        ),
        SizedBox(height: 15.h),
        InputText(
          controller: controller.crtlTextEmail,
          iconPrefix: Icons.email_outlined,
          iconColor: AppColors.light,
          border: InputBorder.none,
          keyboardType: TextInputType.emailAddress,
          validator: null,
          labelText: "Email",
          filled: false,
          enabledBorderColor: Colors.black26,
          focusedBorderColor: AppColors.cyan,
          fontSize: 14.0,
          fontColor: Colors.black45,
        ),
        SizedBox(height: 15.h),
        InputText(
          controller: controller.crtlTextPassword,
          iconPrefix: Icons.lock_outline,
          iconColor: AppColors.light,
          border: InputBorder.none,
          keyboardType: TextInputType.text,
          obscureText: true,
          maxLines: 1,
          validator: null,
          labelText: "Password",
          filled: false,
          enabledBorderColor: Colors.black26,
          focusedBorderColor: AppColors.cyan,
          fontSize: 14.0,
          fontColor: Colors.black45,
        ),
        SizedBox(height: 30.h),
        BtnPrimary(
          title: "Sign Up",
          onPressed: controller.signUp,
        ),
        SizedBox(height: 15.h),
        Center(
          child: Text(
            "Already have an account",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                ?.copyWith(color: Colors.black38, fontWeight: FontWeight.w400),
          ),
        ),
        Center(
          child: TextButton(
            onPressed: controller.goToLogin,
            child: Text(
              "Sign In",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle2?.copyWith(
                  color: AppColors.blueDark, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
