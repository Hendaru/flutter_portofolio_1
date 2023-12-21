import 'controller/login_empty_controller.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hendaru_hery_s_application1/widgets/custom_elevated_button.dart';
import 'package:hendaru_hery_s_application1/widgets/custom_phone_number.dart';

// ignore_for_file: must_be_immutable
class LoginEmptyScreen extends GetWidget<LoginEmptyController> {
  const LoginEmptyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildOne(),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 56.v,
                ),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImageAssetsDeepOrange50,
                      height: 200.adaptSize,
                      width: 200.adaptSize,
                    ),
                    SizedBox(height: 68.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "msg_selamat_datang_di".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "msg_silahkan_masuk_ke".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 18.v),
                    Obx(
                      () => CustomPhoneNumber(
                        country: controller.selectedCountry.value,
                        controller: controller.phoneNumberController,
                        onTap: (Country value) {
                          controller.selectedCountry.value = value;
                        },
                      ),
                    ),
                    SizedBox(height: 24.v),
                    CustomElevatedButton(
                      text: "lbl_masuk".tr,
                      buttonStyle: CustomButtonStyles.fillGray,
                      buttonTextStyle: CustomTextStyles.titleSmallGray500,
                    ),
                    SizedBox(height: 28.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_belum_punya_akun2".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                          TextSpan(
                            text: "lbl_daftar_brance".tr,
                            style: CustomTextStyles.labelLargePrimary_1,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOne() {
    return SizedBox(
      height: 78.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse254,
            height: 78.v,
            width: 360.h,
            alignment: Alignment.center,
          ),
          CustomAppBar(
            height: 43.v,
            leadingWidth: 26.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgVector,
              margin: EdgeInsets.only(left: 16.h),
            ),
            title: Padding(
              padding: EdgeInsets.only(left: 11.h),
              child: Column(
                children: [
                  Row(
                    children: [
                      AppbarTitleImage(
                        imagePath: ImageConstant.imgVectorPrimary,
                      ),
                      AppbarTitleImage(
                        imagePath: ImageConstant.imgVectorPrimary15x13,
                        margin: EdgeInsets.only(left: 9.h),
                      ),
                      Container(
                        height: 15.v,
                        width: 13.h,
                        margin: EdgeInsets.only(left: 11.h),
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgVector15x13,
                              height: 15.v,
                              width: 13.h,
                              alignment: Alignment.center,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorPrimary2x2,
                              height: 2.adaptSize,
                              width: 2.adaptSize,
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(
                                top: 12.v,
                                right: 11.h,
                              ),
                            ),
                          ],
                        ),
                      ),
                      AppbarTitleImage(
                        imagePath: ImageConstant.imgVectorPrimary15x6,
                        margin: EdgeInsets.only(left: 11.h),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                AppbarTitleImage(
                                  imagePath: ImageConstant.imgVectorPrimary4x6,
                                ),
                                AppbarTitleImage(
                                  imagePath: ImageConstant.imgVectorPrimary2x10,
                                  margin: EdgeInsets.only(
                                    left: 9.h,
                                    bottom: 2.v,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2.v),
                            Row(
                              children: [
                                AppbarTitleImage(
                                  imagePath: ImageConstant.imgVector4x6,
                                  margin: EdgeInsets.only(top: 4.v),
                                ),
                                AppbarTitleImage(
                                  imagePath: ImageConstant.imgVectorPrimary8x10,
                                  margin: EdgeInsets.only(left: 9.h),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
