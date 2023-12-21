import '../controller/registration_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegistrationTabContainerScreen.
///
/// This class ensures that the RegistrationTabContainerController is created when the
/// RegistrationTabContainerScreen is first loaded.
class RegistrationTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationTabContainerController());
  }
}
