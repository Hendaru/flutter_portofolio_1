import '../../../core/app_export.dart';
import 'header_item_model.dart';

/// This class is used in the [notificationlist3_item_widget] screen.
class Notificationlist3ItemModel {
  Notificationlist3ItemModel({
    this.notificationImage,
    this.headerItemList,
    this.id,
  }) {
    notificationImage = notificationImage ?? Rx(ImageConstant.imgArrowDown);
    headerItemList = headerItemList ??
        Rx([
          HeaderItemModel(notificationImage: ImageConstant.imgArrowDown.obs)
        ]);
    id = id ?? Rx("");
  }

  Rx<String>? notificationImage;

  Rx<List<HeaderItemModel>>? headerItemList;

  Rx<String>? id;
}
