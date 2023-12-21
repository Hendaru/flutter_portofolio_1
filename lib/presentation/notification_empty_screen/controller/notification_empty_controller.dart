import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/presentation/notification_empty_screen/models/notification_empty_model.dart';

/// A controller class for the NotificationEmptyScreen.
///
/// This class manages the state of the NotificationEmptyScreen, including the
/// current notificationEmptyModelObj
class NotificationEmptyController extends GetxController {
  Rx<NotificationEmptyModel> notificationEmptyModelObj =
      NotificationEmptyModel().obs;
}
