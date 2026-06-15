import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'library_remote_datasource.g.dart';

@RestApi()
abstract class LibraryRemoteDataSource {
  factory LibraryRemoteDataSource(Dio dio) = _LibraryRemoteDataSource;

  // Playlists
  @GET('/users/me/playlists')
  Future<HttpResponse<Map<String, dynamic>>> getMyPlaylists(
    @Query('limit') int limit,
    @Query('offset') int offset,
  );

  @GET('/playlists/{id}')
  Future<HttpResponse<Map<String, dynamic>>> getPlaylist(@Path() String id);

  @POST('/playlists')
  Future<HttpResponse<Map<String, dynamic>>> createPlaylist(
    @Body() Map<String, dynamic> body,
  );

  @PUT('/playlists/{id}')
  Future<HttpResponse<Map<String, dynamic>>> updatePlaylist(
    @Path() String id,
    @Body() Map<String, dynamic> body,
  );

  @DELETE('/playlists/{id}')
  Future<HttpResponse<void>> deletePlaylist(@Path() String id);

  @POST('/playlists/{id}/songs')
  Future<HttpResponse<Map<String, dynamic>>> addSongsToPlaylist(
    @Path() String id,
    @Body() Map<String, dynamic> body,
  );

  @DELETE('/playlists/{id}/songs/{songId}')
  Future<HttpResponse<void>> removeSongFromPlaylist(
    @Path() String playlistId,
    @Path() String songId,
  );

  // Liked songs
  @GET('/users/me/liked_songs')
  Future<HttpResponse<Map<String, dynamic>>> getLikedSongs(
    @Query('limit') int limit,
    @Query('offset') int offset,
  );

  @POST('/songs/{id}/like')
  Future<HttpResponse<Map<String, dynamic>>> toggleLike(@Path() String id);
}
