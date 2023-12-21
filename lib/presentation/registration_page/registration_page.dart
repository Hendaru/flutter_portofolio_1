import 'controller/registration_controller.dart';
import 'models/registration_model.dart';
import 'package:flutter/material.dart';
import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/core/utils/validation_functions.dart';
import 'package:hendaru_hery_s_application1/widgets/custom_drop_down.dart';
import 'package:hendaru_hery_s_application1/widgets/custom_elevated_button.dart';
import 'package:hendaru_hery_s_application1/widgets/custom_text_form_field.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  RegistrationController controller =
      Get.put(RegistrationController(RegistrationModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillOnPrimary,
            child: Column(
              children: [
                SizedBox(height: 19.v),
                _buildMainColumn(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_alamat_email".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          controller: controller.emailController,
          hintText: "msg_jhondoe_gmail_com".tr,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFullNameInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_nama_lengkap".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 6.v),
        CustomTextFormField(
          controller: controller.fullNameController,
          hintText: "lbl_jhon_doe".tr,
          textInputAction: TextInputAction.done,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildReferralCodeInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_kode_referal_opsional".tr,
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
          hintText: "msg_pilih_kode_referal".tr,
          items: controller.registrationModelObj.value.dropdownItemList!.value,
          onChanged: (value) {
            controller.onSelected(value);
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMainColumn() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          _buildEmailInput(),
          SizedBox(height: 21.v),
          _buildFullNameInput(),
          SizedBox(height: 16.v),
          Divider(),
          SizedBox(height: 18.v),
          _buildReferralCodeInput(),
          SizedBox(height: 84.v),
          CustomElevatedButton(
            text: "lbl_lanjutkan".tr,
          ),
          SizedBox(height: 14.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_sudah".tr,
                  style: theme.textTheme.labelLarge,
                ),
                TextSpan(
                  text: "lbl_punya_akun".tr,
                  style: theme.textTheme.labelLarge,
                ),
                TextSpan(
                  text: "lbl_silahkan_masuk".tr,
                  style: CustomTextStyles.labelLargePrimary_1,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
