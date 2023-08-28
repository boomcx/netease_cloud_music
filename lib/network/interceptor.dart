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
    final token = _ref.watch(tokenProvider);
    if (token != null) {
      if (options.method == 'GET') {
        options.queryParameters['cookie'] = token.cookie;
      } else if (options.method == 'POST') {
        options.data['cookie'] = token.cookie;
      }
      //   options.headers['cookie'] = token.cookie;
    }
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    var dataMap = <String, dynamic>{};
    if (response.data is Map) {
      dataMap = Map.from(response.data);
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

    /// 案例接口除了返回值code为固定key值
    /// 其他具体数据为非固定key
    dynamic data;
    if (dataMap['data'] != null) {
      data = dataMap['data'];
    } else if (dataMap['banners'] != null) {
      data = dataMap['banners'];
    } else if (dataMap['result'] != null) {
      data = dataMap['result'];
    }

    response.data = data ?? dataMap;
    handler.next(response);
  }
}
