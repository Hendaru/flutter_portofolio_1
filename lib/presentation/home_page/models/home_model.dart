import '../../../core/app_export.dart';
import 'product_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<ProductItemModel>> productItemList = Rx([
    ProductItemModel(
        icon: ImageConstant.imgIconOrangeA400.obs, text: "Pulsa".obs),
    ProductItemModel(
        icon: ImageConstant.imgIconLimeA700.obs, text: "Listrik PLN".obs),
    ProductItemModel(
        icon: ImageConstant.imgIconLightBlueA400.obs, text: "PDAM".obs),
    ProductItemModel(
        icon: ImageConstant.imgIconOrangeA40040x40.obs,
        text: "Dompet Digital".obs),
    ProductItemModel(
        icon: ImageConstant.imgIconTeal600.obs, text: "Pascabayar".obs),
    ProductItemModel(
        icon: ImageConstant.imgIconIndigoA200.obs, text: "Voucher Game".obs),
    ProductItemModel(icon: ImageConstant.imgIconTealA700.obs, text: "BPJS".obs),
    ProductItemModel(
        icon: ImageConstant.imgIconRedA200.obs, text: "Tarik Tunai".obs)
  ]);
}
