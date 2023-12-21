import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/presentation/reset_pin_success_screen/models/reset_pin_success_model.dart';

/// A controller class for the ResetPinSuccessScreen.
///
/// This class manages the state of the ResetPinSuccessScreen, including the
/// current resetPinSuccessModelObj
class ResetPinSuccessController extends GetxController {
  Rx<ResetPinSuccessModel> resetPinSuccessModelObj = ResetPinSuccessModel().obs;
}
