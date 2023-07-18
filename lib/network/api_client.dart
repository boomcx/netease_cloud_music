export 'params.dart';

import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import './domain.dart';
import '/models.dart';

import 'interceptor.dart';
import 'params.dart';

part 'api_client.g.dart';

@Riverpod(keepAlive: true)
ApiClient apiClient(ApiClientRef ref) => ApiClient(
      Dio(BaseOptions())
        ..interceptors.addAll([
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

  @DELETE('/user/logout')
  Future<void> logout();

  @POST('/user/login')
  Future<AppToken> login(@Body() LoginByPasswordParams params);

  @GET('/search')
  Future search(@Query('keywords') String keywords);

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