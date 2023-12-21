import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/presentation/registration_page/models/registration_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RegistrationPage.
///
/// This class manages the state of the RegistrationPage, including the
/// current registrationModelObj
class RegistrationController extends GetxController {
  RegistrationController(this.registrationModelObj);

  TextEditingController emailController = TextEditingController();

  TextEditingController fullNameController = TextEditingController();

  Rx<RegistrationModel> registrationModelObj;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    fullNameController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in registrationModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    registrationModelObj.value.dropdownItemList.refresh();
  }
}
