import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import '../base.dart';
import '../app.dart';
part 'domain.g.dart';

/// 统一处理错误信息
void formatError(e) {
  logger.d(e.toString());
  if (e is Response) {
    Toast.showError(e.statusMessage ?? '');
    return;
  }
  Toast.showError('请求异常');
}

@Riverpod(keepAlive: true)
AppDomain appDomain(AppDomainRef ref) => throw UnimplementedError();

class AppDomain {
  /// 接口域名
  final String serviceHost;

  /// 电脑端地址
  final String pcService;

  AppDomain({
    required this.serviceHost,
    required this.pcService,
  });
}

final testConfig = AppDomain(
  serviceHost: 'https://netease-cloud-music-api-boomcx.vercel.app/',
  pcService: 'http://',
);

final betaConfig = AppDomain(
  serviceHost: 'http://',
  pcService: 'http://',
);
