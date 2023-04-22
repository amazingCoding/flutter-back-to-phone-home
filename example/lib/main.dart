import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:back_to_home/back_to_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    if (Platform.isAndroid) {
      try {
        BackToHome.backToPhoneHome();
      } on PlatformException {
        print('Failed to get platform version.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: const Center(
          child: Text('Test'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            initPlatformState();
          },
          child: const Icon(Icons.home),
        ),
      ),
    );
  }
}
