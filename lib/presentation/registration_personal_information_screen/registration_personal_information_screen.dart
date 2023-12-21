import 'controller/registration_personal_information_controller.dart';
import 'package:flutter/material.dart';
import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hendaru_hery_s_application1/widgets/custom_elevated_button.dart';
import 'package:hendaru_hery_s_application1/widgets/custom_radio_button.dart';
import 'package:hendaru_hery_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegistrationPersonalInformationScreen
    extends GetWidget<RegistrationPersonalInformationController> {
  const RegistrationPersonalInformationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                "msg_lengkapi_data_pribadi".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 6.v),
              Text(
                "msg_lengkapi_data_pribadi2".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 21.v),
              _buildInputColumn(),
              SizedBox(height: 19.v),
              _buildGenderColumn(),
              SizedBox(height: 18.v),
              _buildDobColumn(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildContinueButton(),
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
  Widget _buildInputColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_nomor_induk_ktp".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          controller: controller.passwordController,
          hintText: "lbl_12020xxxxxxxxx".tr,
          textInputAction: TextInputAction.done,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildGenderColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_jenis_kelamin".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 11.v),
        Obx(
          () => Row(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: CustomRadioButton(
                  text: "lbl_laki_laki".tr,
                  value: controller.registrationPersonalInformationModelObj
                      .value.radioList.value[0],
                  groupValue: controller.jenisKelamin.value,
                  onChange: (value) {
                    controller.jenisKelamin.value = value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: CustomRadioButton(
                  text: "lbl_perempuan".tr,
                  value: controller.registrationPersonalInformationModelObj
                      .value.radioList.value[1],
                  groupValue: controller.jenisKelamin.value,
                  onChange: (value) {
                    controller.jenisKelamin.value = value;
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDobColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_tanggal_lahir".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 6.v),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 7.v,
          ),
          decoration: AppDecoration.outlineGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 3.v),
                child: Text(
                  "lbl_dd_mm_yyyy".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgIconRight,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildContinueButton() {
    return CustomElevatedButton(
      text: "lbl_lanjutkan".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 16.v,
      ),
    );
  }
}
