import 'controller/pin_controller.dart';
import 'package:flutter/material.dart';
import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class PinScreen extends GetWidget<PinController> {
  const PinScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 66.v),
          child: Column(
            children: [
              Text(
                "lbl_masukan_pin".tr,
                style: CustomTextStyles.titleLargeOnPrimary,
              ),
              SizedBox(height: 55.v),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 14.v,
                    child: AnimatedSmoothIndicator(
                      activeIndex: 0,
                      count: 6,
                      effect: ScrollingDotsEffect(
                        spacing: 24,
                        activeDotColor: appTheme.gray30099,
                        dotColor: theme.colorScheme.onPrimary,
                        dotHeight: 14.v,
                        dotWidth: 14.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 62.v),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Row(
                      children: [
                        Text(
                          "lbl_1".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 76.h),
                          child: Text(
                            "lbl_2".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 74.h),
                          child: Text(
                            "lbl_3".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 72.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Row(
                      children: [
                        Text(
                          "lbl_4".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 73.h),
                          child: Text(
                            "lbl_5".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 74.h),
                          child: Text(
                            "lbl_6".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 71.v),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Row(
                      children: [
                        Text(
                          "lbl_7".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 74.h),
                          child: Text(
                            "lbl_8".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 74.h),
                          child: Text(
                            "lbl_9".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 61.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10.v,
                            bottom: 9.v,
                          ),
                          child: Text(
                            "lbl_0".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgClose,
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          radius: BorderRadius.circular(
                            25.h,
                          ),
                          margin: EdgeInsets.only(left: 56.h),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 57.v),
                  Padding(
                    padding: EdgeInsets.only(left: 72.h),
                    child: Text(
                      "lbl_lupa_pin".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
