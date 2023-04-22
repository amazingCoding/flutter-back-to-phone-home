import 'back_to_home_platform_interface.dart';

class BackToHome {
  static Future<void> backToPhoneHome() async {
    BackToHomePlatform.instance.backToPhoneHome();
  }
}
