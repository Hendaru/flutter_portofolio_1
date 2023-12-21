import '../controller/reset_pin_success_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ResetPinSuccessScreen.
///
/// This class ensures that the ResetPinSuccessController is created when the
/// ResetPinSuccessScreen is first loaded.
class ResetPinSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResetPinSuccessController());
  }
}
