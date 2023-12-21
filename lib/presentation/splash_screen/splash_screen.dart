import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:hendaru_hery_s_application1/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgUser,
                          height: 70.v,
                          width: 60.h),
                      SizedBox(height: 28.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgLogo,
                          height: 28.v,
                          width: 215.h),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildFrameSection()));
  }

  /// Section Widget
  Widget _buildFrameSection() {
    return Padding(
        padding: EdgeInsets.only(bottom: 29.v),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text("lbl_from".tr, style: CustomTextStyles.bodySmallOnPrimary),
          CustomImageView(
              imagePath: ImageConstant.imgSettings,
              height: 15.v,
              width: 84.h,
              margin: EdgeInsets.only(top: 4.v)),
          Padding(
              padding: EdgeInsets.only(top: 24.v),
              child: Text("lbl_v2_0_0".tr,
                  style: CustomTextStyles.bodySmallOnPrimary))
        ]));
  }
}
