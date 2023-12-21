import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [upload_selfie_with_ktp_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class UploadSelfieWithKtpModel {
  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        userImage: ImageConstant.imgImage5.obs,
        profileImage: ImageConstant.imgIconGreen500.obs,
        profileText: "Benar".obs)
  ]);
}
