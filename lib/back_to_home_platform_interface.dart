import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'back_to_home_method_channel.dart';

abstract class BackToHomePlatform extends PlatformInterface {
  /// Constructs a BackToHomePlatform.
  BackToHomePlatform() : super(token: _token);

  static final Object _token = Object();

  static BackToHomePlatform _instance = MethodChannelBackToHome();

  /// The default instance of [BackToHomePlatform] to use.
  ///
  /// Defaults to [MethodChannelBackToHome].
  static BackToHomePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BackToHomePlatform] when
  /// they register themselves.
  static set instance(BackToHomePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> backToPhoneHome() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
