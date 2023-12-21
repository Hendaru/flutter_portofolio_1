import '../controller/notification_controller.dart';
import '../models/header_item_model.dart';
import '../models/notificationlist3_item_model.dart';
import '../widgets/header_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore: must_be_immutable
class Notificationlist3ItemWidget extends StatelessWidget {
  Notificationlist3ItemWidget(
    this.notificationlist3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Notificationlist3ItemModel notificationlist3ItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: notificationlist3ItemModelObj.notificationImage!.value,
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
      itemCount: notificationlist3ItemModelObj.headerItemList!.value.length,
      itemBuilder: (context, index) {
        HeaderItemModel model =
            notificationlist3ItemModelObj.headerItemList!.value[index];
        return HeaderItemWidget(
          model,
        );
      },
    );
  }
}
