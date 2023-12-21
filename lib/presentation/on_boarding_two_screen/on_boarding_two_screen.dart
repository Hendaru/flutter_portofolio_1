import 'controller/on_boarding_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hendaru_hery_s_application1/widgets/custom_icon_button.dart';

class OnBoardingTwoScreen extends GetWidget<OnBoardingTwoController> {
  const OnBoardingTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(29.h),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  SizedBox(height: 64.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgImageAssets,
                      height: 200.v,
                      width: 300.h),
                  SizedBox(height: 37.v),
                  Container(
                      width: 255.h,
                      margin: EdgeInsets.symmetric(horizontal: 22.h),
                      child: Text("msg_tarik_tunai_dan".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleMedium!
                              .copyWith(height: 2.00))),
                  SizedBox(height: 42.v),
                  CustomIconButton(
                      height: 44.adaptSize,
                      width: 44.adaptSize,
                      padding: EdgeInsets.all(9.h),
                      decoration: IconButtonStyleHelper.fillPrimary,
                      onTap: () {
                        onTapBtnIcon();
                      },
                      child: CustomImageView(imagePath: ImageConstant.imgIcon)),
                  Spacer(),
                  Text("lbl_from".tr,
                      style: CustomTextStyles.bodySmallOnPrimary),
                  SizedBox(height: 4.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgSettings,
                      height: 15.v,
                      width: 84.h),
                  SizedBox(height: 24.v),
                  Text("lbl_v2_0_0".tr,
                      style: CustomTextStyles.bodySmallOnPrimary)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(actions: [
      AppbarSubtitleOne(
          text: "lbl_lewati".tr,
          margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 26.v),
          onTap: () {
            onTapTitle();
          })
    ], styleType: Style.bgFill);
  }

  /// Navigates to the loginEmptyScreen when the action is triggered.
  onTapTitle() {
    Get.toNamed(
      AppRoutes.loginEmptyScreen,
    );
  }

  /// Navigates to the onBoardingThreeScreen when the action is triggered.
  onTapBtnIcon() {
    Get.toNamed(
      AppRoutes.onBoardingThreeScreen,
    );
  }
}
