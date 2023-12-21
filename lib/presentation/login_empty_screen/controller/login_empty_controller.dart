import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/presentation/login_empty_screen/models/login_empty_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

/// A controller class for the LoginEmptyScreen.
///
/// This class manages the state of the LoginEmptyScreen, including the
/// current loginEmptyModelObj
class LoginEmptyController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  Rx<LoginEmptyModel> loginEmptyModelObj = LoginEmptyModel().obs;

  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('62').obs;

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
  }
}
