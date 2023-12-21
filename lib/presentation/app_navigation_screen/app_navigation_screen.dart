import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:hendaru_hery_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Splash Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "On Boarding One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onBoardingOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "On Boarding Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onBoardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "On Boarding Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onBoardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login (Empty)".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginEmptyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "OTP Code Resend".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.otpCodeResendScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "PIN".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pinScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Reset PIN Success".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.resetPinSuccessScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Registration - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.registrationTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Upload KTP".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.uploadKtpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "KTP Uploaded One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.ktpUploadedOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Upload Selfie With KTP".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.uploadSelfieWithKtpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "KTP Uploaded".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.ktpUploadedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Registration - Personal Information".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.registrationPersonalInformationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "Registration - Business Informataion".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.registrationBusinessInformataionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Registration - Bank Information".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.registrationBankInformationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification (Empty)".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationEmptyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeContainerScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
