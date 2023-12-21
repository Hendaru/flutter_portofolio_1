import '../controller/ktp_uploaded_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the KtpUploadedOneScreen.
///
/// This class ensures that the KtpUploadedOneController is created when the
/// KtpUploadedOneScreen is first loaded.
class KtpUploadedOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KtpUploadedOneController());
  }
}
