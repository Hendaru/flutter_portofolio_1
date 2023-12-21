import 'controller/upload_ktp_controller.dart';
import 'package:flutter/material.dart';
import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hendaru_hery_s_application1/widgets/custom_elevated_button.dart';
import 'package:hendaru_hery_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class UploadKtpScreen extends GetWidget<UploadKtpController> {
  const UploadKtpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 44.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_langkah_3_dari_6".tr,
                style: CustomTextStyles.bodySmallGray600_2,
              ),
              SizedBox(height: 8.v),
              Text(
                "lbl_unggah_foto_ktp".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 4.v),
              Container(
                width: 287.h,
                margin: EdgeInsets.only(right: 40.h),
                child: Text(
                  "msg_ambil_foto_ktp_kamu".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall!.copyWith(
                    height: 1.83,
                  ),
                ),
              ),
              SizedBox(height: 13.v),
              _buildFrame(),
              SizedBox(height: 16.v),
              CustomTextFormField(
                controller: controller.descriptionController,
                hintText: "msg_siapkan_foto_ktp".tr,
                textInputAction: TextInputAction.done,
                maxLines: 3,
                borderDecoration: TextFormFieldStyleHelper.fillGray,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildAmbilFoto(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.fromLTRB(16.h, 23.v, 320.h, 23.v),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage3,
                  height: 198.v,
                  width: 156.h,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                ),
                SizedBox(height: 8.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIconGreen500,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4.h,
                        top: 3.v,
                        bottom: 3.v,
                      ),
                      child: Text(
                        "lbl_benar".tr,
                        style: CustomTextStyles.bodyMediumBlack900,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage4,
                  height: 198.v,
                  width: 156.h,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                ),
                SizedBox(height: 8.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIconOrange800,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4.h,
                        top: 3.v,
                        bottom: 3.v,
                      ),
                      child: Text(
                        "lbl_salah".tr,
                        style: CustomTextStyles.bodyMediumBlack900,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAmbilFoto() {
    return CustomElevatedButton(
      text: "lbl_ambil_foto".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 16.v,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgIconLeft,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ),
    );
  }
}
