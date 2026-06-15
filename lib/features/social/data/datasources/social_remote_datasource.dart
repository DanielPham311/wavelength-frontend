import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'social_remote_datasource.g.dart';

@RestApi()
abstract class SocialRemoteDataSource {
  factory SocialRemoteDataSource(Dio dio) = _SocialRemoteDataSource;

  // Play history
  @POST('/analytics/play')
  Future<HttpResponse<void>> recordPlay(@Body() Map<String, dynamic> body);

  @GET('/analytics/recently_played')
  Future<HttpResponse<Map<String, dynamic>>> getRecentlyPlayed(
    @Query('limit') int limit,
    @Query('offset') int offset,
  );

  // Trending
  @GET('/songs/trending')
  Future<HttpResponse<Map<String, dynamic>>> getTrendingSongs(
    @Query('limit') int limit,
    @Query('offset') int offset,
  );

  // Follows
  @POST('/artists/{id}/follow')
  Future<HttpResponse<Map<String, dynamic>>> toggleFollow(@Path() String id);

  @GET('/users/me/following')
  Future<HttpResponse<Map<String, dynamic>>> getFollowing(
    @Query('limit') int limit,
    @Query('offset') int offset,
  );

  @GET('/artists/{id}/is_following')
  Future<HttpResponse<Map<String, dynamic>>> isFollowing(@Path() String id);
}
