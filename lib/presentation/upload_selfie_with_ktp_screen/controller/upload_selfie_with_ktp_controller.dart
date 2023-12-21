import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/presentation/upload_selfie_with_ktp_screen/models/upload_selfie_with_ktp_model.dart';

/// A controller class for the UploadSelfieWithKtpScreen.
///
/// This class manages the state of the UploadSelfieWithKtpScreen, including the
/// current uploadSelfieWithKtpModelObj
class UploadSelfieWithKtpController extends GetxController {
  Rx<UploadSelfieWithKtpModel> uploadSelfieWithKtpModelObj =
      UploadSelfieWithKtpModel().obs;
}
