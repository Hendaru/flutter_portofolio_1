import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/presentation/on_boarding_three_screen/models/on_boarding_three_model.dart';

/// A controller class for the OnBoardingThreeScreen.
///
/// This class manages the state of the OnBoardingThreeScreen, including the
/// current onBoardingThreeModelObj
class OnBoardingThreeController extends GetxController {
  Rx<OnBoardingThreeModel> onBoardingThreeModelObj = OnBoardingThreeModel().obs;
}
