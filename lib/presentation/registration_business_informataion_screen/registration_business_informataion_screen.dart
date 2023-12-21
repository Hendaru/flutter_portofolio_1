import 'controller/registration_business_informataion_controller.dart';
import 'package:flutter/material.dart';
import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hendaru_hery_s_application1/widgets/custom_elevated_button.dart';
import 'package:hendaru_hery_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegistrationBusinessInformataionScreen
    extends GetWidget<RegistrationBusinessInformataionController> {
  const RegistrationBusinessInformataionScreen({Key? key})
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
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 44.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      right: 16.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "msg_langkah_5_dari_6".tr,
                            style: CustomTextStyles.bodySmallGray600_2,
                          ),
                        ),
                        SizedBox(height: 7.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "msg_lengkapi_data_usaha".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        SizedBox(height: 6.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "msg_lengkapi_data_usaha2".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        SizedBox(height: 18.v),
                        Container(
                          height: 100.adaptSize,
                          width: 100.adaptSize,
                          padding: EdgeInsets.all(30.h),
                          decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder50,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgIconGray400,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            alignment: Alignment.center,
                          ),
                        ),
                        SizedBox(height: 13.v),
                        Text(
                          "lbl_foto_usaha_kamu".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                        SizedBox(height: 23.v),
                        _buildInputNamaUsaha(),
                        SizedBox(height: 19.v),
                        _buildInputJenisUsaha(),
                        SizedBox(height: 20.v),
                        _buildInputAlamatLengkap(),
                        SizedBox(height: 15.v),
                        _buildFrameSIUP(
                          siupText: "lbl_npwp".tr,
                          optionalText: "lbl_opsional".tr,
                          uploadButton: "lbl_unggah".tr,
                        ),
                        SizedBox(height: 15.v),
                        _buildFrameSIUP(
                          siupText: "lbl_siup".tr,
                          optionalText: "lbl_opsional".tr,
                          uploadButton: "lbl_unggah".tr,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildLanjutkan(),
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
  Widget _buildInputNamaUsaha() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_nama_usaha".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          controller: controller.johnDoeController,
          hintText: "msg_contoh_toko_maju".tr,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputJenisUsaha() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_jenis_usaha".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          controller: controller.exampleMSMEController,
          hintText: "lbl_contoh_umkm".tr,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputAlamatLengkap() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_alamat_lengkap".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 6.v),
        CustomTextFormField(
          controller: controller.johnDoeController1,
          hintText: "msg_masukkan_alamat".tr,
          textInputAction: TextInputAction.done,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLanjutkan() {
    return CustomElevatedButton(
      text: "lbl_lanjutkan".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 16.v,
      ),
    );
  }

  /// Common widget
  Widget _buildFrameSIUP({
    required String siupText,
    required String optionalText,
    required String uploadButton,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 3.v,
            ),
            child: Text(
              siupText,
              style: CustomTextStyles.titleSmallBlack900.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              top: 5.v,
              bottom: 4.v,
            ),
            child: Text(
              optionalText,
              style: CustomTextStyles.bodySmall10.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
          Spacer(),
          Container(
            width: 61.h,
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlinePrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder11,
            ),
            child: Text(
              uploadButton,
              style: CustomTextStyles.labelLargePrimary.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
