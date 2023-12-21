import '../controller/upload_ktp_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UploadKtpScreen.
///
/// This class ensures that the UploadKtpController is created when the
/// UploadKtpScreen is first loaded.
class UploadKtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UploadKtpController());
  }
}
