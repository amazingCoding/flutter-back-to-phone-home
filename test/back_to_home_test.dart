import 'package:flutter_test/flutter_test.dart';
import 'package:back_to_home/back_to_home_platform_interface.dart';
import 'package:back_to_home/back_to_home_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBackToHomePlatform with MockPlatformInterfaceMixin implements BackToHomePlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<void> backToPhoneHome() {
    throw UnimplementedError();
  }
}

void main() {
  final BackToHomePlatform initialPlatform = BackToHomePlatform.instance;

  test('$MethodChannelBackToHome is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBackToHome>());
  });
}
