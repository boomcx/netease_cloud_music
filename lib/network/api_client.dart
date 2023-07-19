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

  @GET('/register/anonimous')
  Future<AppToken> login();

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

  // @GET('https://api.thecatapi.com/v1/images/search')
  // Future<List<ArticleModel>> getArticle(
  //   @Query('limit') int limit,
  // );
  // Future<List<ArticleModel>> getArticle(@Queries() Map<String, dynamic> query);
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
