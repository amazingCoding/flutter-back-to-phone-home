import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'back_to_home_platform_interface.dart';

/// An implementation of [BackToHomePlatform] that uses method channels.
class MethodChannelBackToHome extends BackToHomePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('back_to_home');

  @override
  Future<void> backToPhoneHome() async {
    await methodChannel.invokeMethod<void>('backToPhoneHome');
  }
}
