import 'controller/on_boarding_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/widgets/custom_elevated_button.dart';

class OnBoardingThreeScreen extends GetWidget<OnBoardingThreeController> {
  const OnBoardingThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Container(
                      height: 70.v,
                      width: double.maxFinite,
                      decoration:
                          BoxDecoration(color: theme.colorScheme.onPrimary)),
                  Spacer(flex: 55),
                  CustomImageView(
                      imagePath: ImageConstant.imgFrame7657,
                      height: 133.v,
                      width: 268.h),
                  SizedBox(height: 71.v),
                  _buildFrameSection(),
                  Spacer(flex: 44),
                  Text("lbl_from".tr,
                      style: CustomTextStyles.bodySmallOnPrimary),
                  SizedBox(height: 4.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgSettings,
                      height: 15.v,
                      width: 84.h),
                  SizedBox(height: 24.v),
                  Text("lbl_v2_0_0".tr,
                      style: CustomTextStyles.bodySmallOnPrimary),
                  SizedBox(height: 29.v)
                ]))));
  }

  /// Section Widget
  Widget _buildFrameSection() {
    return Column(children: [
      SizedBox(
          width: 199.h,
          child: Text("msg_jaringan_dan_kemudahan".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleMedium!.copyWith(height: 2.00))),
      SizedBox(height: 42.v),
      CustomElevatedButton(
          height: 44.v,
          width: 99.h,
          text: "lbl_masuk".tr,
          buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
          onPressed: () {
            onTapMasuk();
          })
    ]);
  }

  /// Navigates to the loginEmptyScreen when the action is triggered.
  onTapMasuk() {
    Get.toNamed(
      AppRoutes.loginEmptyScreen,
    );
  }
}
