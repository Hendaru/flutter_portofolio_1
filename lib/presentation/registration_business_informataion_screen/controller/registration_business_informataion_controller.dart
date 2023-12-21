import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/presentation/registration_business_informataion_screen/models/registration_business_informataion_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RegistrationBusinessInformataionScreen.
///
/// This class manages the state of the RegistrationBusinessInformataionScreen, including the
/// current registrationBusinessInformataionModelObj
class RegistrationBusinessInformataionController extends GetxController {
  TextEditingController johnDoeController = TextEditingController();

  TextEditingController exampleMSMEController = TextEditingController();

  TextEditingController johnDoeController1 = TextEditingController();

  Rx<RegistrationBusinessInformataionModel>
      registrationBusinessInformataionModelObj =
      RegistrationBusinessInformataionModel().obs;

  @override
  void onClose() {
    super.onClose();
    johnDoeController.dispose();
    exampleMSMEController.dispose();
    johnDoeController1.dispose();
  }
}
