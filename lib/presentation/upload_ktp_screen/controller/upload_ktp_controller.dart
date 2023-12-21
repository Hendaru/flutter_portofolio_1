import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/presentation/upload_ktp_screen/models/upload_ktp_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the UploadKtpScreen.
///
/// This class manages the state of the UploadKtpScreen, including the
/// current uploadKtpModelObj
class UploadKtpController extends GetxController {
  TextEditingController descriptionController = TextEditingController();

  Rx<UploadKtpModel> uploadKtpModelObj = UploadKtpModel().obs;

  @override
  void onClose() {
    super.onClose();
    descriptionController.dispose();
  }
}
