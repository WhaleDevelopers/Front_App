import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiErrorHandler {
  /// 메인 에러 처리 메서드 - 모든 에러를 이 메서드로 전달
  static void handleError(DioException error) {
    if (kDebugMode) {
      _logErrorDetails(error);
    }

    // 네트워크 오류와 일반 오류를 구분하여 처리
    if (_isNetworkError(error)) {
      _handleNetworkError(error);
    } else {
      _handleGeneralError(error);
    }
  }

  /*------------------------------------------------------------------------*/
  /// 네트워크 관련 에러 처리
  static void _handleNetworkError(DioException error) {
    final networkMessage = _getNetworkErrorMessage(error);
    
    if (kDebugMode) {
      print('🌐 [Network Error] $networkMessage');
      print('   ├─ Type: ${error.type}');
      print('   ├─ URL: ${error.requestOptions.uri}');
      print('   └─ Method: ${error.requestOptions.method}');
    }
    // 추가 네트워크 에러 처리 로직
    _onNetworkError(error, networkMessage);
  }

  /// 일반 에러 (서버 응답 에러) 처리
  static void _handleGeneralError(DioException error) {
    final generalMessage = _getGeneralErrorMessage(error);
    
    if (kDebugMode) {
      print('⚠️  [Server Error] $generalMessage');
      print('   ├─ Status: ${error.response?.statusCode}');
      print('   ├─ URL: ${error.requestOptions.uri}');
      print('   └─ Data: ${error.response?.data}');
    }

    // 추가 일반 에러 처리 로직
    _onGeneralError(error, generalMessage);
  }
  /*------------------------------------------------------------------------*/

  /// 네트워크 에러인지 확인
  static bool _isNetworkError(DioException error) {
    return [
      DioExceptionType.connectionTimeout,
      DioExceptionType.sendTimeout,
      DioExceptionType.receiveTimeout,
      DioExceptionType.connectionError,
      DioExceptionType.cancel,
    ].contains(error.type);
  }

  /// 네트워크 에러 메시지 생성
  static String _getNetworkErrorMessage(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return '서버 연결 시간이 초과되었습니다. 네트워크 상태를 확인해주세요.';
      case DioExceptionType.sendTimeout:
        return '요청 전송 시간이 초과되었습니다. 다시 시도해주세요.';
      case DioExceptionType.receiveTimeout:
        return '서버 응답 시간이 초과되었습니다. 잠시 후 다시 시도해주세요.';
      case DioExceptionType.connectionError:
        return '네트워크 연결에 문제가 있습니다. 인터넷 연결을 확인해주세요.';
      case DioExceptionType.cancel:
        return '요청이 취소되었습니다.';
      default:
        return '네트워크 오류가 발생했습니다.';
    }
  }

  /// 일반 에러 메시지 생성 (서버 응답 기반)
  static String _getGeneralErrorMessage(DioException error) {
    final response = error.response;
    
    if (response == null) {
      return '서버 응답을 받을 수 없습니다.';
    }

    // 서버에서 보낸 에러 메시지 우선 사용
    final serverMessage = _extractServerErrorMessage(response);
    if (serverMessage != null) {
      return serverMessage;
    }

    // HTTP 상태 코드별 기본 메시지
    switch (response.statusCode) {
      case 400:
        return '잘못된 요청입니다. 입력 데이터를 확인해주세요.';
      case 401:
        return '인증이 필요합니다. 다시 로그인해주세요.';
      case 403:
        return '접근 권한이 없습니다.';
      case 404:
        return '요청한 리소스를 찾을 수 없습니다.';
      case 409:
        return '요청이 충돌했습니다. 다시 시도해주세요.';
      case 422:
        return '입력 데이터가 올바르지 않습니다.';
      case 429:
        return '너무 많은 요청이 발생했습니다. 잠시 후 다시 시도해주세요.';
      case 500:
        return '서버 내부 오류가 발생했습니다.';
      case 502:
        return '서버 게이트웨이 오류가 발생했습니다.';
      case 503:
        return '서버가 일시적으로 사용할 수 없습니다.';
      case 504:
        return '서버 응답 시간이 초과되었습니다.';
      default:
        return '서버 오류가 발생했습니다. (코드: ${response.statusCode})';
    }
  }

  /// 서버 응답에서 에러 메시지 추출
  static String? _extractServerErrorMessage(Response response) {
    try {
      final data = response.data;
      
      if (data is Map<String, dynamic>) {
        return data['message'] ?? 
               data['error'] ?? 
               data['detail'] ?? 
               data['msg'] ??
               data['error_description'];
      }
      if (data is String)  return data;
      
    } catch (e) {
      // JSON 파싱 실패 시 무시
    }
    
    return null;
  }

  /// 상세한 에러 로그 출력 (개발 모드에서만)
  static void _logErrorDetails(DioException error) {
    print('\n🚨 ===== API Error Details =====');
    print('Type: ${error.type}');
    print('Message: ${error.message}');
    print('URL: ${error.requestOptions.uri}');
    print('Method: ${error.requestOptions.method}');
    
    if (error.response != null) {
      print('Status Code: ${error.response!.statusCode}');
      print('Response Headers: ${error.response!.headers}');
      print('Response Data: ${error.response!.data}');
    }else{
      print('Connection Error.');
    }
    
    print('Stack Trace: ${error.stackTrace}');
    print('==============================\n');
  }

  /// 네트워크 에러 발생 시 추가 처리
  static void _onNetworkError(DioException error, String message) {
    // TODO: 네트워크 에러 발생 시 추가 로직
    // 예: 오프라인 상태 감지, 재시도 로직, 사용자 알림 등
    
    // 예시: 네트워크 상태 체크
    // if (error.type == DioExceptionType.connectionError) {
    //   NetworkService.checkConnectivity();
    // }
    
    // 예시: 자동 재시도 (특정 조건에서)
    // if (error.type == DioExceptionType.receiveTimeout) {
    //   RetryService.scheduleRetry(error.requestOptions);
    // }
  }

  /// 일반 에러 발생 시 추가 처리
  static void _onGeneralError(DioException error, String message) {
    // TODO: 서버 에러 발생 시 추가 로직
    // 예: 에러 리포팅, 사용자 알림, 로그아웃 처리 등
    
    // 예시: 401 에러 시 자동 로그아웃
    // if (error.response?.statusCode == 401) {
    //   AuthService.logout();
    // }
    
    // 예시: 에러 리포팅 (운영 환경에서)
    // if (!kDebugMode) {
    //   CrashReportingService.reportError(error, message);
    // }
  }

  /// 에러 메시지만 반환 (UI에서 사용)
  static String getErrorMessage(DioException error) {
    if (_isNetworkError(error)) {
      return _getNetworkErrorMessage(error);
    } else {
      return _getGeneralErrorMessage(error);
    }
  }

  /// 에러가 재시도 가능한지 확인
  static bool isRetryable(DioException error) {
    if (_isNetworkError(error)) {
      // 네트워크 에러는 대부분 재시도 가능
      return error.type != DioExceptionType.cancel;
    } else {
      // 서버 에러 중 재시도 가능한 것들
      final statusCode = error.response?.statusCode;
      return statusCode != null && [429, 500, 502, 503, 504].contains(statusCode);
    }
  }
}