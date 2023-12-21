import '../../../core/app_export.dart';
import 'notificationlist3_item_model.dart';

/// This class defines the variables used in the [notification_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationModel {
  Rx<List<Notificationlist3ItemModel>> notificationlist3ItemList = Rx([
    Notificationlist3ItemModel(
        notificationImage: ImageConstant.imgArrowDown.obs,
        notificationTitle: "Pemberitahuan".obs),
    Notificationlist3ItemModel(
        notificationImage: ImageConstant.imgIconGreen600.obs),
    Notificationlist3ItemModel(
        notificationTitle:
            "Saldo pending kamu sebesar Rp45.000 telah menjadi saldo aktif"
                .obs),
    Notificationlist3ItemModel(
        notificationTitle: "Refund dana sebesar Rp25.000 berhasil".obs)
  ]);
}
