export 'params.dart';

import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import './domain.dart';
import '/models.dart';

import 'interceptor.dart';

part 'api_client.g.dart';

@Riverpod(keepAlive: true)
ApiClient apiClient(ApiClientRef ref) => ApiClient(
      Dio(
        BaseOptions(
          sendTimeout: const Duration(milliseconds: 10000),
        ),
      )..interceptors.addAll([
          LogInterceptor(
            requestBody: true,
            responseBody: true,
          ),
          NetInterceptor(ref),
        ]),
      baseUrl:
          ref.watch(appDomainProvider.select((value) => value.serviceHost)),
    );

/// https://pub.dev/packages/retrofit
@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET('/logout')
  Future<void> logout();

  /// 游客登陆
  ///
  /// 说明 : 直接调用此接口, 可获取游客cookie,如果遇到其他接口未登录状态报400状态码需要验证的错误,可使用此接口获取游客cookie避免报错
  @GET('/register/anonimous')
  Future<AppToken> login();

  /// 获取用户详情
  ///
  /// 说明 : 登录后调用此接口 , 传入用户 id, 可以获取用户详情
  /// 必选参数 : uid : 用户 id
  @GET('/user/account')
  Future user(@Query('uid') String uid);

  ///说明 : 调用此接口 , 传入搜索关键词可以搜索该音乐 / 专辑 / 歌手 / 歌单 / 用户 , 关键词可以多个 , 以空格隔开 , 如 " 周杰伦 搁浅 "( 不需要登录 ), 可通过 /song/url 接口传入歌曲 id 获取具体的播放链接
  ///
  /// [keywords] : 关键词
  /// [limit] : 返回数量 , 默认为 30 offset : 偏移数量，用于分页 , 如 : 如 :( 页数 -1)*30, 其中 30 为 limit 的值 , 默认为 0
  /// [type]: 搜索类型；默认为 1 即单曲 , 取值意义 : 1: 单曲, 10: 专辑, 100: 歌手, 1000: 歌单, 1002: 用户, 1004: MV, 1006: 歌词, 1009: 电台, 1014: 视频, 1018:综合,
  @GET('/search')
  Future search(
    @Query('keywords') String keywords, {
    @Query('limit') int limit = 20,
    @Query('type') int type = 1,
  });

  /// 说明 : 调用此接口 , 可获取 banner( 轮播图 ) 数据
  /// type:资源类型,对应以下类型,默认为 0 即 PC
  /// 0: pc
  /// 1: android
  /// 2: iphone
  /// 3: ipad
  @GET('/banner')
  Future<List<BannerEntity>> banner({
    @Query('type') int? type,
  });
}

/**
 *   @GET('/tasks/{id}')
  Future<Task> getTask(@Path('id') String id);
  
  @GET('/demo')
  Future<String> queries(@Queries() Map<String, dynamic> queries);
  
  @GET('https://httpbin.org/get')
  Future<String> namedExample(
      @Query('apikey') String apiKey,
      @Query('scope') String scope,
      @Query('type') String type,
      @Query('from') int from);
  
  @PATCH('/tasks/{id}')
  Future<Task> updateTaskPart(
      @Path() String id, @Body() Map<String, dynamic> map);
  
  @PUT('/tasks/{id}')
  Future<Task> updateTask(@Path() String id, @Body() Task task);
  
  @DELETE('/tasks/{id}')
  Future<void> deleteTask(@Path() String id);
  
  @POST('/tasks')
  Future<Task> createTask(@Body() Task task);
  
  @POST('http://httpbin.org/post')
  Future<void> createNewTaskFromFile(@Part() File file);
  
  @POST('http://httpbin.org/post')
  @FormUrlEncoded()
  Future<String> postUrlEncodedFormData(@Field() String hello);
 */
