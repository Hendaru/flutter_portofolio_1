import '../controller/notification_controller.dart';
import '../models/header_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hendaru_hery_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class HeaderItemWidget extends StatelessWidget {
  HeaderItemWidget(
    this.headerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HeaderItemModel headerItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomImageView(
        imagePath: headerItemModelObj.notificationImage!.value,
        height: 24.adaptSize,
        width: 24.adaptSize,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 23.v,
          bottom: 23.v,
        ),
      ),
    );
  }
}
