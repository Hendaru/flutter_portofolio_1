import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/presentation/registration_personal_information_screen/models/registration_personal_information_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RegistrationPersonalInformationScreen.
///
/// This class manages the state of the RegistrationPersonalInformationScreen, including the
/// current registrationPersonalInformationModelObj
class RegistrationPersonalInformationController extends GetxController {
  TextEditingController passwordController = TextEditingController();

  Rx<RegistrationPersonalInformationModel>
      registrationPersonalInformationModelObj =
      RegistrationPersonalInformationModel().obs;

  Rx<String> jenisKelamin = "".obs;

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
  }
}
