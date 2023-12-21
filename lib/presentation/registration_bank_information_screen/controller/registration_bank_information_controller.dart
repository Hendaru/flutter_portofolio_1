import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/presentation/registration_bank_information_screen/models/registration_bank_information_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RegistrationBankInformationScreen.
///
/// This class manages the state of the RegistrationBankInformationScreen, including the
/// current registrationBankInformationModelObj
class RegistrationBankInformationController extends GetxController {
  TextEditingController passwordController = TextEditingController();

  TextEditingController exampleJohnDoeController = TextEditingController();

  Rx<RegistrationBankInformationModel> registrationBankInformationModelObj =
      RegistrationBankInformationModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
    exampleJohnDoeController.dispose();
  }

  onSelected(dynamic value) {
    for (var element
        in registrationBankInformationModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    registrationBankInformationModelObj.value.dropdownItemList.refresh();
  }
}
