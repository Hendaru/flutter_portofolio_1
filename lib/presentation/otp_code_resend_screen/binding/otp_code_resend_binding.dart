import '../controller/otp_code_resend_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OtpCodeResendScreen.
///
/// This class ensures that the OtpCodeResendController is created when the
/// OtpCodeResendScreen is first loaded.
class OtpCodeResendBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OtpCodeResendController());
  }
}
