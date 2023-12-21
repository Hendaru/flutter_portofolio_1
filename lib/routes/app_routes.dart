import 'package:hendaru_hery_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:hendaru_hery_s_application1/presentation/splash_screen/binding/splash_binding.dart';
import 'package:hendaru_hery_s_application1/presentation/on_boarding_one_screen/on_boarding_one_screen.dart';
import 'package:hendaru_hery_s_application1/presentation/on_boarding_one_screen/binding/on_boarding_one_binding.dart';
import 'package:hendaru_hery_s_application1/presentation/on_boarding_two_screen/on_boarding_two_screen.dart';
import 'package:hendaru_hery_s_application1/presentation/on_boarding_two_screen/binding/on_boarding_two_binding.dart';
import 'package:hendaru_hery_s_application1/presentation/on_boarding_three_screen/on_boarding_three_screen.dart';
import 'package:hendaru_hery_s_application1/presentation/on_boarding_three_screen/binding/on_boarding_three_binding.dart';
import 'package:hendaru_hery_s_application1/presentation/login_empty_screen/login_empty_screen.dart';
import 'package:hendaru_hery_s_application1/presentation/login_empty_screen/binding/login_empty_binding.dart';
import 'package:hendaru_hery_s_application1/presentation/otp_code_resend_screen/otp_code_resend_screen.dart';
import 'package:hendaru_hery_s_application1/presentation/otp_code_resend_screen/binding/otp_code_resend_binding.dart';
import 'package:hendaru_hery_s_application1/presentation/pin_screen/pin_screen.dart';
import 'package:hendaru_hery_s_application1/presentation/pin_screen/binding/pin_binding.dart';
import 'package:hendaru_hery_s_application1/presentation/reset_pin_success_screen/reset_pin_success_screen.dart';
import 'package:hendaru_hery_s_application1/presentation/reset_pin_success_screen/binding/reset_pin_success_binding.dart';
import 'package:hendaru_hery_s_application1/presentation/registration_tab_container_screen/registration_tab_container_screen.dart';
import 'package:hendaru_hery_s_application1/presentation/registration_tab_container_screen/binding/registration_tab_container_binding.dart';
import 'package:hendaru_hery_s_application1/presentation/upload_ktp_screen/upload_ktp_screen.dart';
import 'package:hendaru_hery_s_application1/presentation/upload_ktp_screen/binding/upload_ktp_binding.dart';
import 'package:hendaru_hery_s_application1/presentation/ktp_uploaded_one_screen/ktp_uploaded_one_screen.dart';
import 'package:hendaru_hery_s_application1/presentation/ktp_uploaded_one_screen/binding/ktp_uploaded_one_binding.dart';
import 'package:hendaru_hery_s_application1/presentation/upload_selfie_with_ktp_screen/upload_selfie_with_ktp_screen.dart';
import 'package:hendaru_hery_s_application1/presentation/upload_selfie_with_ktp_screen/binding/upload_selfie_with_ktp_binding.dart';
import 'package:hendaru_hery_s_application1/presentation/ktp_uploaded_screen/ktp_uploaded_screen.dart';
import 'package:hendaru_hery_s_application1/presentation/ktp_uploaded_screen/binding/ktp_uploaded_binding.dart';
import 'package:hendaru_hery_s_application1/presentation/registration_personal_information_screen/registration_personal_information_screen.dart';
import 'package:hendaru_hery_s_application1/presentation/registration_personal_information_screen/binding/registration_personal_information_binding.dart';
import 'package:hendaru_hery_s_application1/presentation/registration_business_informataion_screen/registration_business_informataion_screen.dart';
import 'package:hendaru_hery_s_application1/presentation/registration_business_informataion_screen/binding/registration_business_informataion_binding.dart';
import 'package:hendaru_hery_s_application1/presentation/registration_bank_information_screen/registration_bank_information_screen.dart';
import 'package:hendaru_hery_s_application1/presentation/registration_bank_information_screen/binding/registration_bank_information_binding.dart';
import 'package:hendaru_hery_s_application1/presentation/notification_screen/notification_screen.dart';
import 'package:hendaru_hery_s_application1/presentation/notification_screen/binding/notification_binding.dart';
import 'package:hendaru_hery_s_application1/presentation/notification_empty_screen/notification_empty_screen.dart';
import 'package:hendaru_hery_s_application1/presentation/notification_empty_screen/binding/notification_empty_binding.dart';
import 'package:hendaru_hery_s_application1/presentation/home_container_screen/home_container_screen.dart';
import 'package:hendaru_hery_s_application1/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:hendaru_hery_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:hendaru_hery_s_application1/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onBoardingOneScreen = '/on_boarding_one_screen';

  static const String onBoardingTwoScreen = '/on_boarding_two_screen';

  static const String onBoardingThreeScreen = '/on_boarding_three_screen';

  static const String loginEmptyScreen = '/login_empty_screen';

  static const String otpCodeResendScreen = '/otp_code_resend_screen';

  static const String pinScreen = '/pin_screen';

  static const String resetPinSuccessScreen = '/reset_pin_success_screen';

  static const String registrationPage = '/registration_page';

  static const String registrationTabContainerScreen =
      '/registration_tab_container_screen';

  static const String uploadKtpScreen = '/upload_ktp_screen';

  static const String ktpUploadedOneScreen = '/ktp_uploaded_one_screen';

  static const String uploadSelfieWithKtpScreen =
      '/upload_selfie_with_ktp_screen';

  static const String ktpUploadedScreen = '/ktp_uploaded_screen';

  static const String registrationPersonalInformationScreen =
      '/registration_personal_information_screen';

  static const String registrationBusinessInformataionScreen =
      '/registration_business_informataion_screen';

  static const String registrationBankInformationScreen =
      '/registration_bank_information_screen';

  static const String notificationScreen = '/notification_screen';

  static const String notificationEmptyScreen = '/notification_empty_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onBoardingOneScreen,
      page: () => OnBoardingOneScreen(),
      bindings: [
        OnBoardingOneBinding(),
      ],
    ),
    GetPage(
      name: onBoardingTwoScreen,
      page: () => OnBoardingTwoScreen(),
      bindings: [
        OnBoardingTwoBinding(),
      ],
    ),
    GetPage(
      name: onBoardingThreeScreen,
      page: () => OnBoardingThreeScreen(),
      bindings: [
        OnBoardingThreeBinding(),
      ],
    ),
    GetPage(
      name: loginEmptyScreen,
      page: () => LoginEmptyScreen(),
      bindings: [
        LoginEmptyBinding(),
      ],
    ),
    GetPage(
      name: otpCodeResendScreen,
      page: () => OtpCodeResendScreen(),
      bindings: [
        OtpCodeResendBinding(),
      ],
    ),
    GetPage(
      name: pinScreen,
      page: () => PinScreen(),
      bindings: [
        PinBinding(),
      ],
    ),
    GetPage(
      name: resetPinSuccessScreen,
      page: () => ResetPinSuccessScreen(),
      bindings: [
        ResetPinSuccessBinding(),
      ],
    ),
    GetPage(
      name: registrationTabContainerScreen,
      page: () => RegistrationTabContainerScreen(),
      bindings: [
        RegistrationTabContainerBinding(),
      ],
    ),
    GetPage(
      name: uploadKtpScreen,
      page: () => UploadKtpScreen(),
      bindings: [
        UploadKtpBinding(),
      ],
    ),
    GetPage(
      name: ktpUploadedOneScreen,
      page: () => KtpUploadedOneScreen(),
      bindings: [
        KtpUploadedOneBinding(),
      ],
    ),
    GetPage(
      name: uploadSelfieWithKtpScreen,
      page: () => UploadSelfieWithKtpScreen(),
      bindings: [
        UploadSelfieWithKtpBinding(),
      ],
    ),
    GetPage(
      name: ktpUploadedScreen,
      page: () => KtpUploadedScreen(),
      bindings: [
        KtpUploadedBinding(),
      ],
    ),
    GetPage(
      name: registrationPersonalInformationScreen,
      page: () => RegistrationPersonalInformationScreen(),
      bindings: [
        RegistrationPersonalInformationBinding(),
      ],
    ),
    GetPage(
      name: registrationBusinessInformataionScreen,
      page: () => RegistrationBusinessInformataionScreen(),
      bindings: [
        RegistrationBusinessInformataionBinding(),
      ],
    ),
    GetPage(
      name: registrationBankInformationScreen,
      page: () => RegistrationBankInformationScreen(),
      bindings: [
        RegistrationBankInformationBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: notificationEmptyScreen,
      page: () => NotificationEmptyScreen(),
      bindings: [
        NotificationEmptyBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
