import '../upload_selfie_with_ktp_screen/widgets/userprofile_item_widget.dart';
import 'controller/upload_selfie_with_ktp_controller.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hendaru_hery_s_application1/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class UploadSelfieWithKtpScreen
    extends GetWidget<UploadSelfieWithKtpController> {
  const UploadSelfieWithKtpScreen({Key? key})
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
                  "msg_ambil_foto_selfie".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall!.copyWith(
                    height: 1.83,
                  ),
                ),
              ),
              SizedBox(height: 13.v),
              _buildUploadSelfieWith(),
              SizedBox(height: 16.v),
              _buildFrame(),
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
  Widget _buildUploadSelfieWith() {
    return SizedBox(
      height: 230.v,
      width: 328.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(right: 91.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
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
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 230.v,
              child: Obx(
                () => ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 16.h,
                    );
                  },
                  itemCount: controller.uploadSelfieWithKtpModelObj.value
                      .userprofileItemList.value.length,
                  itemBuilder: (context, index) {
                    UserprofileItemModel model = controller
                        .uploadSelfieWithKtpModelObj
                        .value
                        .userprofileItemList
                        .value[index];
                    return UserprofileItemWidget(
                      model,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Container(
      width: 328.h,
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 5.v),
          Container(
            width: 292.h,
            margin: EdgeInsets.only(right: 6.h),
            child: Text(
              "msg_siapkan_foto_ktp2".tr,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.83,
              ),
            ),
          ),
        ],
      ),
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
