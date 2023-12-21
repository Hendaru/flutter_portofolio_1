import '../controller/registration_business_informataion_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegistrationBusinessInformataionScreen.
///
/// This class ensures that the RegistrationBusinessInformataionController is created when the
/// RegistrationBusinessInformataionScreen is first loaded.
class RegistrationBusinessInformataionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationBusinessInformataionController());
  }
}
