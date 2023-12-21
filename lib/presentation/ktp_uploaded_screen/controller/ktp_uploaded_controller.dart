import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/presentation/ktp_uploaded_screen/models/ktp_uploaded_model.dart';

/// A controller class for the KtpUploadedScreen.
///
/// This class manages the state of the KtpUploadedScreen, including the
/// current ktpUploadedModelObj
class KtpUploadedController extends GetxController {
  Rx<KtpUploadedModel> ktpUploadedModelObj = KtpUploadedModel().obs;
}
