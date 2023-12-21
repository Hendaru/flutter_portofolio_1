import '../controller/registration_personal_information_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegistrationPersonalInformationScreen.
///
/// This class ensures that the RegistrationPersonalInformationController is created when the
/// RegistrationPersonalInformationScreen is first loaded.
class RegistrationPersonalInformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationPersonalInformationController());
  }
}
