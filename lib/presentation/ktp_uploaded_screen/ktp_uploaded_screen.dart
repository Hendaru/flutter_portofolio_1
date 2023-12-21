import 'controller/ktp_uploaded_controller.dart';
import 'package:flutter/material.dart';
import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hendaru_hery_s_application1/widgets/custom_elevated_button.dart';
import 'package:hendaru_hery_s_application1/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class KtpUploadedScreen extends GetWidget<KtpUploadedController> {
  const KtpUploadedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
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
                "msg_langkah_4_dari_6".tr,
                style: CustomTextStyles.bodySmallGray600_2,
              ),
              SizedBox(height: 7.v),
              Text(
                "msg_unggah_foto_selfie".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 4.v),
              Container(
                width: 270.h,
                margin: EdgeInsets.only(right: 57.h),
                child: Text(
                  "msg_ambil_foto_selfie2".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall!.copyWith(
                    height: 1.83,
                  ),
                ),
              ),
              SizedBox(height: 13.v),
              CustomImageView(
                imagePath: ImageConstant.imgImage5,
                height: 380.v,
                width: 328.h,
                radius: BorderRadius.circular(
                  8.h,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildModalAction(),
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
  Widget _buildModalAction() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 16.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomOutlinedButton(
            width: 159.h,
            text: "lbl_ubah".tr,
          ),
          CustomElevatedButton(
            width: 159.h,
            text: "lbl_lanjutkan".tr,
            margin: EdgeInsets.only(left: 10.h),
          ),
        ],
      ),
    );
  }
}
