import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '/providers.dart';

/// 请求拦截相关的处理
class NetInterceptor extends Interceptor {
  NetInterceptor(Ref ref) : _ref = ref;
  final Ref _ref;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = _ref.read(userAuthProvider).valueOrNull;
    if (token != null) {
      options.headers['Authorization'] = 'Bearer ${token.token}';
    }
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    Map dataMap;
    if (response.data is Map) {
      dataMap = response.data;
    } else if (response.data is String) {
      dataMap = jsonDecode(response.data);
    } else {
      dataMap = {'code': 200, 'data': response.data, 'message': 'success'};
    }

    if (dataMap['code'] != 200) {
      if (dataMap['code'] == 402 || dataMap['code'] == 401) {
        // _ref.read(eventBusProvider).fire(AppNeedToLogin());
      }
      handler.reject(
        DioException(
          requestOptions: response.requestOptions,
          error: dataMap['message'],
        ),
        true,
      );
      return;
    }
    response.data = dataMap['result'];
    handler.next(response);
  }
}
