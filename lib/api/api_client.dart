import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'api_error_handler.dart';

import 'package:dio/io.dart';  // HTTP 클라이언트 어댑터
import 'dart:io'; 

class ApiClient {
  static ApiClient? _instance;
  late final Dio _dio;
  // final String baseUrl = 'https://whaledevs.com';
  static const String baseUrl = kDebugMode 
      ? 'https://10.0.2.2:8443'  // 개발 중 (Android 에뮬레이터)
      : 'https://localhost:8443'; // 개발 중 (실제 기기 테스트)

  ApiClient._internal() {
    _dio = Dio();
    _initializeDio();
  }

  static ApiClient get instance {
    _instance ??= ApiClient._internal();
    return _instance!;
  }

  Dio get dio => _dio;

  void _initializeDio() {
    _dio.options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );

    // Request/Response 로깅 인터셉터 (개발 모드에서만)
    if (kDebugMode) {
      (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (HttpClient client) {
        client.badCertificateCallback = (X509Certificate cert, String host, int port) {
          return true; // 개발 환경에서만 모든 인증서 허용
        };
        return client;
      };

      _dio.interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
          requestHeader: true,
          responseHeader: false,
          error: true,
        ),
      );
    }

  //  _dio.interceptors.add(
  //     LogInterceptor(
  //       requestBody: true,
  //       responseBody: true,
  //       requestHeader: true,
  //       responseHeader: false,
  //       error: true,
  //     ),
  //   );

    // 에러 처리 인터셉터
    _dio.interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) {
          ApiErrorHandler.handleError(error);  // ← 새로운 에러 핸들러 사용
          handler.next(error);
        },
        onRequest: (options, handler) {
          // final token = await SecureStorage.getToken();
          // if (token != null) {
          //   options.headers['Authorization'] = 'Bearer $token';
          // }
          handler.next(options);
        },
        onResponse: (response, handler) {
          handler.next(response);
        },
      ),
    );
  }

  // // 인증 토큰 설정 (필요시)
  // void setAuthToken(String token) {
  //   _dio.options.headers['Authorization'] = 'Bearer $token';
  // }

  // // 인증 토큰 제거
  // void clearAuthToken() {
  //   _dio.options.headers.remove('Authorization');
  // }

  // 베이스 URL 변경
  void setBaseUrl(String baseUrl) {
    _dio.options.baseUrl = baseUrl;
  }
}
