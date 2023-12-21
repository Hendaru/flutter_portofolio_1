import '../controller/login_empty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginEmptyScreen.
///
/// This class ensures that the LoginEmptyController is created when the
/// LoginEmptyScreen is first loaded.
class LoginEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginEmptyController());
  }
}
