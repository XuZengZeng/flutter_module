import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Home  Channel
class HomeChannel {
  HomeChannel._internal();

  factory HomeChannel() => _instance;

  static late final HomeChannel _instance = HomeChannel._internal();

  final MethodChannel platform = const MethodChannel("HomePagesChannel");

  /// 展示Toast
  Future<void> showToast(String msg) async {
    try {
      await platform.invokeMethod('getHomeConfig');
    } on PlatformException catch (e) {
      debugPrint(e.toString());
    }
  }
}
