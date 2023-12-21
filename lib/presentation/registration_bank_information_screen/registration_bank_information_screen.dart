import 'controller/registration_bank_information_controller.dart';
import 'package:flutter/material.dart';
import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hendaru_hery_s_application1/widgets/custom_drop_down.dart';
import 'package:hendaru_hery_s_application1/widgets/custom_elevated_button.dart';
import 'package:hendaru_hery_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegistrationBankInformationScreen
    extends GetWidget<RegistrationBankInformationController> {
  const RegistrationBankInformationScreen({Key? key})
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
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "msg_langkah_6_dari_6".tr,
                  style: CustomTextStyles.bodySmallGray600_2,
                ),
              ),
              SizedBox(height: 5.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_informasi_bank".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 6.v),
              SizedBox(
                width: 326.h,
                child: Text(
                  "msg_masukkan_informasi".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall!.copyWith(
                    height: 1.83,
                  ),
                ),
              ),
              SizedBox(height: 16.v),
              _buildInputNamaBank(),
              SizedBox(height: 20.v),
              _buildInputNomorRekening(),
              SizedBox(height: 20.v),
              _buildInputNamaPemilikRekening(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildDaftarAkun(),
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
  Widget _buildInputNamaBank() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_nama_bank".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 7.v),
        CustomDropDown(
          icon: Container(
            margin: EdgeInsets.fromLTRB(30.h, 8.v, 16.h, 8.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowdownGray400,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          hintText: "lbl_pilih_bank".tr,
          items: controller.registrationBankInformationModelObj.value
              .dropdownItemList!.value,
          onChanged: (value) {
            controller.onSelected(value);
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputNomorRekening() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_nomor_rekening".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 6.v),
        CustomTextFormField(
          controller: controller.passwordController,
          hintText: "lbl_8891xxxxxx".tr,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputNamaPemilikRekening() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_nama_pemilik_rekening".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 6.v),
        CustomTextFormField(
          controller: controller.exampleJohnDoeController,
          hintText: "msg_contoh_john_doe".tr,
          textInputAction: TextInputAction.done,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDaftarAkun() {
    return CustomElevatedButton(
      text: "lbl_daftar_akun".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 16.v,
      ),
    );
  }
}
