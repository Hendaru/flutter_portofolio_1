import '../controller/upload_selfie_with_ktp_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hendaru_hery_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<UploadSelfieWithKtpController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 156.h,
      child: Align(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: userprofileItemModelObj.userImage!.value,
                height: 198.v,
                width: 156.h,
                radius: BorderRadius.circular(
                  8.h,
                ),
              ),
            ),
            SizedBox(height: 8.v),
            Row(
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: userprofileItemModelObj.profileImage!.value,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    top: 3.v,
                    bottom: 3.v,
                  ),
                  child: Obx(
                    () => Text(
                      userprofileItemModelObj.profileText!.value,
                      style: CustomTextStyles.bodyMediumBlack900,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
