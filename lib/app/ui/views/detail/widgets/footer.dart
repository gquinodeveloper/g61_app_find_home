import 'package:app_find_house/app/data/models/response/response_house_model.dart';
import 'package:app_find_house/app/ui/components/buttons/btn_primary.dart';
import 'package:app_find_house/app/ui/components/textfield/input_text.dart';
import 'package:app_find_house/app/ui/components/titles/content_title.dart';
import 'package:app_find_house/app/ui/views/detail/detail_controller.dart';
import 'package:app_find_house/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Footer extends StatefulWidget {
  @override
  FooterState createState() => FooterState();

  Footer({
    required this.house,
  });
  final ResultHouseModel house;
}

class FooterState extends State<Footer> {
  final _dateController = TextEditingController();
  final _priceController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _dateController.dispose();
    _priceController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 80.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.r),
            topRight: Radius.circular(30.r),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "\$${widget.house.price} USD",
              style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: AppColors.blueDark, fontWeight: FontWeight.w600),
            ),
            GestureDetector(
              onTap: () => _settingModalBottomSheet(context),
              child: Container(
                width: 170.w,
                height: 45.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.cyan,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Text(
                  "Reserved Now!",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _settingModalBottomSheet(BuildContext context) {
    //Get.BottonSheet
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black54,
      //isDismissible: false,
      //enableDrag: false,
      builder: (_) => GetBuilder<DetailController>(
        builder: (controller) => Container(
          height: 350.h,
          padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            top: 30.h,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ContentTitle(
                title: "Reserved",
                hMargin: 0.0,
              ),
              InputText(
                controller: controller.crtlTextDate,
                iconPrefix: Icons.date_range,
                iconColor: AppColors.light,
                border: InputBorder.none,
                keyboardType: TextInputType.datetime,
                labelText: "Date",
                filled: false,
                enabledBorderColor: Colors.black26,
                focusedBorderColor: AppColors.cyan,
                fontSize: 14.0,
                fontColor: Colors.black45,
              ),
              SizedBox(height: 20.h),
              InputText(
                initialValue: "\$ ${controller.house.price}",
                iconPrefix: Icons.monetization_on,
                iconColor: AppColors.light,
                border: InputBorder.none,
                keyboardType: TextInputType.number,
                labelText: "Price",
                filled: false,
                enabledBorderColor: Colors.black26,
                focusedBorderColor: AppColors.cyan,
                readOnly: true,
                fontSize: 14.0,
                fontColor: Colors.black45,
              ),
              SizedBox(height: 40.h),
              BtnPrimary(
                title: "Save",
                onPressed: controller.saveReservation,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
