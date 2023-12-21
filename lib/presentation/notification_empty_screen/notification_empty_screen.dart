import 'controller/notification_empty_controller.dart';
import 'package:flutter/material.dart';
import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class NotificationEmptyScreen extends GetWidget<NotificationEmptyController> {
  const NotificationEmptyScreen({Key? key})
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
          padding: EdgeInsets.only(top: 153.v),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEmptyState,
                height: 150.adaptSize,
                width: 150.adaptSize,
              ),
              SizedBox(height: 20.v),
              Text(
                "msg_belum_ada_pemberitahuan".tr,
                style: CustomTextStyles.bodySmallGray500,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 23.v,
          bottom: 23.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "lbl_pemberitahuan".tr,
        margin: EdgeInsets.only(left: 10.h),
      ),
      styleType: Style.bgOutline,
    );
  }
}
