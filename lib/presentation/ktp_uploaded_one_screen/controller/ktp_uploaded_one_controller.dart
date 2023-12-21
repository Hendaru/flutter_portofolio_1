import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/presentation/ktp_uploaded_one_screen/models/ktp_uploaded_one_model.dart';

/// A controller class for the KtpUploadedOneScreen.
///
/// This class manages the state of the KtpUploadedOneScreen, including the
/// current ktpUploadedOneModelObj
class KtpUploadedOneController extends GetxController {
  Rx<KtpUploadedOneModel> ktpUploadedOneModelObj = KtpUploadedOneModel().obs;
}
