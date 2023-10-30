import 'package:dio/dio.dart';
import 'package:flutter_beer_app/config/env/env_exports.dart';

enum BuildMode { dev, prod, profile }

abstract class FetchDataFromApi {
  static Future<Response> fetchPage({int? page, int amount = 25}) async {
    String pattern = '?page=$page&per_page=$amount';
    late String requestUrl;
    switch (ApplicationConfig.buildMode) {
      case 'DEV':
        requestUrl = DevEnvironmentConfig.baseUrl + pattern;
      case 'PROD':
        requestUrl = ProdEnvironmentConfig.baseUrl + pattern;
      case 'PROFILE':
        requestUrl = ProfileEnvironmentConfig.baseUrl + pattern;
    }
    return await Dio().get(requestUrl);
  }
}
