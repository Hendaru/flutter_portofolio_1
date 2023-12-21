import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/presentation/registration_tab_container_screen/models/registration_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RegistrationTabContainerScreen.
///
/// This class manages the state of the RegistrationTabContainerScreen, including the
/// current registrationTabContainerModelObj
class RegistrationTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<RegistrationTabContainerModel> registrationTabContainerModelObj =
      RegistrationTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
