import '../controller/upload_selfie_with_ktp_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UploadSelfieWithKtpScreen.
///
/// This class ensures that the UploadSelfieWithKtpController is created when the
/// UploadSelfieWithKtpScreen is first loaded.
class UploadSelfieWithKtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UploadSelfieWithKtpController());
  }
}
