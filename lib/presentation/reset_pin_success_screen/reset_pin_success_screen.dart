import 'controller/reset_pin_success_controller.dart';
import 'package:flutter/material.dart';
import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hendaru_hery_s_application1/widgets/custom_elevated_button.dart';

class ResetPinSuccessScreen extends GetWidget<ResetPinSuccessController> {
  const ResetPinSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 16.h, top: 64.v, right: 16.h),
                child: Column(children: [
                  CustomImageView(
                      imagePath:
                          ImageConstant.imgImageAssetsDeepOrange50130x130,
                      height: 130.adaptSize,
                      width: 130.adaptSize),
                  SizedBox(height: 26.v),
                  Text("msg_ubah_pin_berhasil".tr,
                      style: theme.textTheme.titleLarge),
                  SizedBox(height: 7.v),
                  Text("msg_pin_kamu_telah_berhasil".tr,
                      style: theme.textTheme.bodySmall),
                  SizedBox(height: 19.v),
                  CustomElevatedButton(text: "lbl_kembali_masuk".tr),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.fromLTRB(16.h, 23.v, 320.h, 23.v),
            onTap: () {
              onTapArrowDown();
            }),
        styleType: Style.bgFill);
  }

  /// Navigates to the pinScreen when the action is triggered.
  onTapArrowDown() {
    Get.toNamed(
      AppRoutes.pinScreen,
    );
  }
}
