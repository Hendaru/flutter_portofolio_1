import '../../../core/app_export.dart';

/// This class is used in the [product_item_widget] screen.
class ProductItemModel {
  ProductItemModel({
    this.icon,
    this.text,
    this.id,
  }) {
    icon = icon ?? Rx(ImageConstant.imgIconOrangeA400);
    text = text ?? Rx("Pulsa");
    id = id ?? Rx("");
  }

  Rx<String>? icon;

  Rx<String>? text;

  Rx<String>? id;
}
