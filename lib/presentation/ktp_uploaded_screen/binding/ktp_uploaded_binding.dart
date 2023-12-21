import '../controller/ktp_uploaded_controller.dart';
import 'package:get/get.dart';

/// A binding class for the KtpUploadedScreen.
///
/// This class ensures that the KtpUploadedController is created when the
/// KtpUploadedScreen is first loaded.
class KtpUploadedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KtpUploadedController());
  }
}
