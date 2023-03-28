import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

/// 全局公共  Channel
class PlatformChannel {
  PlatformChannel._internal();

  factory PlatformChannel() => _instance;

  static late final PlatformChannel _instance = PlatformChannel._internal();

  final MethodChannel platform = const MethodChannel("PlatformChannel");

  /// 展示Toast
  Future<void> showToast(String msg) async {
    try {
      await platform.invokeMethod('showToast', <String, dynamic>{"msg": msg});
    } on PlatformException catch (e) {
      debugPrint(e.toString());
    }
  }
}
