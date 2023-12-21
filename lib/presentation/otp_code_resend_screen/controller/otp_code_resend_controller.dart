import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/presentation/otp_code_resend_screen/models/otp_code_resend_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the OtpCodeResendScreen.
///
/// This class manages the state of the OtpCodeResendScreen, including the
/// current otpCodeResendModelObj
class OtpCodeResendController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<OtpCodeResendModel> otpCodeResendModelObj = OtpCodeResendModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }
}
