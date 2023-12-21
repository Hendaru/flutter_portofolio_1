import '../controller/pin_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PinScreen.
///
/// This class ensures that the PinController is created when the
/// PinScreen is first loaded.
class PinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PinController());
  }
}
