import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:back_to_home/back_to_home_method_channel.dart';

void main() {
  MethodChannelBackToHome platform = MethodChannelBackToHome();
  const MethodChannel channel = MethodChannel('back_to_home');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });
}
