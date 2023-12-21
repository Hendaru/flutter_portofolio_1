import 'controller/otp_code_resend_controller.dart';
import 'package:flutter/material.dart';
import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hendaru_hery_s_application1/widgets/custom_elevated_button.dart';
import 'package:hendaru_hery_s_application1/widgets/custom_pin_code_text_field.dart';

class OtpCodeResendScreen extends GetWidget<OtpCodeResendController> {
  const OtpCodeResendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 16.h, top: 68.v, right: 16.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("msg_verifikasi_nomor".tr,
                          style: theme.textTheme.titleLarge),
                      SizedBox(height: 5.v),
                      Container(
                          width: 276.h,
                          margin: EdgeInsets.only(right: 51.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_kami_telah_mengirimkan2".tr,
                                    style: theme.textTheme.bodySmall),
                                TextSpan(
                                    text: "lbl_628116335881".tr,
                                    style: theme.textTheme.labelLarge)
                              ]),
                              textAlign: TextAlign.left)),
                      SizedBox(height: 17.v),
                      _buildOtpFrame(),
                      SizedBox(height: 19.v),
                      Row(children: [
                        Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Text("lbl_tunggu".tr,
                                style: CustomTextStyles.labelLargeGray600)),
                        Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text("lbl_00_59".tr,
                                style: CustomTextStyles.labelLargePrimary))
                      ]),
                      SizedBox(height: 26.v),
                      CustomElevatedButton(
                          text: "lbl_verifikasi".tr,
                          onPressed: () {
                            onTapVerifikasi();
                          }),
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

  /// Section Widget
  Widget _buildOtpFrame() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_masukkan_6_digit".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 10.v),
      Obx(() => CustomPinCodeTextField(
          context: Get.context!,
          controller: controller.otpController.value,
          onChanged: (value) {}))
    ]);
  }

  /// Navigates to the loginEmptyScreen when the action is triggered.
  onTapArrowDown() {
    Get.toNamed(
      AppRoutes.loginEmptyScreen,
    );
  }

  /// Navigates to the pinScreen when the action is triggered.
  onTapVerifikasi() {
    Get.toNamed(
      AppRoutes.pinScreen,
    );
  }
}
