import 'controller/registration_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/presentation/registration_page/registration_page.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class RegistrationTabContainerScreen
    extends GetWidget<RegistrationTabContainerController> {
  const RegistrationTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 44.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "msg_langkah_1_dari_7".tr,
                  style: CustomTextStyles.bodySmallGray600_2,
                ),
              ),
              SizedBox(height: 6.v),
              Container(
                width: 259.h,
                margin: EdgeInsets.only(
                  left: 16.h,
                  right: 85.h,
                ),
                child: Text(
                  "msg_bergabung_dengan".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleLarge!.copyWith(
                    height: 1.60,
                  ),
                ),
              ),
              Container(
                width: 308.h,
                margin: EdgeInsets.only(
                  left: 16.h,
                  right: 36.h,
                ),
                child: Text(
                  "msg_silahkan_lengkapi".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall!.copyWith(
                    height: 1.83,
                  ),
                ),
              ),
              SizedBox(height: 18.v),
              _buildInput(),
              SizedBox(
                height: 436.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    RegistrationPage(),
                    RegistrationPage(),
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
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgLogoPrimary,
        margin: EdgeInsets.only(left: 16.h),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildInput() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_nomor_handphone".tr,
              style: theme.textTheme.bodySmall,
            ),
            SizedBox(height: 6.v),
            Container(
              height: 40.v,
              width: 328.h,
              decoration: BoxDecoration(
                color: appTheme.gray10001,
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
                border: Border.all(
                  color: appTheme.gray300,
                  width: 1.h,
                ),
              ),
              child: TabBar(
                controller: controller.tabviewController,
                labelPadding: EdgeInsets.zero,
                labelColor: appTheme.gray400,
                labelStyle: TextStyle(
                  fontSize: 12.fSize,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w600,
                ),
                unselectedLabelColor: appTheme.gray500,
                unselectedLabelStyle: TextStyle(
                  fontSize: 14.fSize,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
                indicator: BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      color: appTheme.gray200,
                      width: 1.h,
                    ),
                  ),
                ),
                tabs: [
                  Tab(
                    child: Text(
                      "lbl_62".tr,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "lbl_812xxxxxxxxx".tr,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
