import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'catalog_remote_datasource.g.dart';

@RestApi()
abstract class CatalogRemoteDataSource {
  factory CatalogRemoteDataSource(Dio dio) = _CatalogRemoteDataSource;

  // Songs
  @GET('/songs/{id}')
  Future<HttpResponse<Map<String, dynamic>>> getSong(@Path() String id);

  @GET('/songs/trending')
  Future<HttpResponse<Map<String, dynamic>>> getTrendingSongs(
    @Query('limit') int limit,
    @Query('offset') int offset,
  );

  // Artists
  @GET('/artists/{id}')
  Future<HttpResponse<Map<String, dynamic>>> getArtist(@Path() String id);

  @GET('/artists/{id}/songs')
  Future<HttpResponse<Map<String, dynamic>>> getArtistSongs(
    @Path() String id,
    @Query('limit') int limit,
    @Query('offset') int offset,
  );

  @GET('/artists/{id}/albums')
  Future<HttpResponse<Map<String, dynamic>>> getArtistAlbums(
    @Path() String id,
    @Query('limit') int limit,
    @Query('offset') int offset,
  );

  // Albums
  @GET('/albums/{id}')
  Future<HttpResponse<Map<String, dynamic>>> getAlbum(@Path() String id);

  // Search
  @GET('/search')
  Future<HttpResponse<Map<String, dynamic>>> search(
    @Query('q') String query,
    @Query('type') String? type,
    @Query('limit') int limit,
    @Query('offset') int offset,
  );
}
