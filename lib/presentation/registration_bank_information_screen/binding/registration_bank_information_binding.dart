import '../controller/registration_bank_information_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegistrationBankInformationScreen.
///
/// This class ensures that the RegistrationBankInformationController is created when the
/// RegistrationBankInformationScreen is first loaded.
class RegistrationBankInformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationBankInformationController());
  }
}
