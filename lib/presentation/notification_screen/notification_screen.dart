import '../notification_screen/widgets/notificationlist3_item_widget.dart';
import 'controller/notification_controller.dart';
import 'models/notificationlist3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hendaru_hery_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class NotificationScreen extends GetWidget<NotificationController> {
  const NotificationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: _buildNotificationList3(),
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationList3() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 6.v,
          );
        },
        itemCount: controller
            .notificationModelObj.value.notificationlist3ItemList.value.length,
        itemBuilder: (context, index) {
          Notificationlist3ItemModel model = controller.notificationModelObj
              .value.notificationlist3ItemList.value[index];
          return Notificationlist3ItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Common widget
  Widget _buildNotificationList1() {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 5.v,
          ),
          decoration: AppDecoration.fillGray5001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIconGreen600,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 9.h),
                      child: Text(
                        "msg_isi_saldo_berhasil".tr,
                        style: CustomTextStyles.titleSmallBlack900,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: 3.v),
                      child: Text(
                        "lbl_27_jul_15_37".tr,
                        style: CustomTextStyles.bodySmallGray500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 13.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(left: 26.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: 241.h,
                          child: Text(
                            "msg_kamu_telah_berhasil".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodySmallGray600_2.copyWith(
                              height: 1.83,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgClosePrimary,
                        height: 8.v,
                        width: 24.h,
                        margin: EdgeInsets.only(
                          left: 20.h,
                          top: 15.v,
                          bottom: 21.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildNotificationList2() {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIconGreen600,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: Text(
                      "lbl_refund_berhasil".tr,
                      style: CustomTextStyles.titleSmallBlack900,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(top: 3.v),
                    child: Text(
                      "lbl_27_jul_15_37".tr,
                      style: CustomTextStyles.bodySmallGray500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 25.h),
                child: Text(
                  "msg_refund_dana_sebesar".tr,
                  style: CustomTextStyles.bodySmallGray600_2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
