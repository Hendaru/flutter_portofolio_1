import '../../../core/app_export.dart';

/// This class is used in the [header_item_widget] screen.
class HeaderItemModel {
  HeaderItemModel({
    this.notificationImage,
    this.id,
  }) {
    notificationImage = notificationImage ?? Rx(ImageConstant.imgArrowDown);
    id = id ?? Rx("");
  }

  Rx<String>? notificationImage;

  Rx<String>? id;
}
