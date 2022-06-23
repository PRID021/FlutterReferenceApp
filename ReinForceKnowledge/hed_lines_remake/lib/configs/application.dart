import 'package:flutter/material.dart';
import 'package:hed_lines_remake/constants/api_gateway.dart';

class Application {
  /// [Production - Dev]
  static String baseUrl = ApiGateway.baseURL;
  static const String mode = "DEV";
  Future<void> initialAppLication(BuildContext context) async {
    try {} catch (error) {
      debugPrint(error.toString());
    }
  }

  ///Singleton factory
  static final Application _instance = Application._internal();

  factory Application() {
    return _instance;
  }

  Application._internal();
}
