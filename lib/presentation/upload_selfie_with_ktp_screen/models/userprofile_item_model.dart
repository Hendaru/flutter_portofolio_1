import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.userImage,
    this.profileImage,
    this.profileText,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgImage5);
    profileImage = profileImage ?? Rx(ImageConstant.imgIconGreen500);
    profileText = profileText ?? Rx("Benar");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? profileImage;

  Rx<String>? profileText;

  Rx<String>? id;
}
