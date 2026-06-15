import '../../../../core/network/api_response.dart';
import '../../../catalog/domain/entities/song.dart';
import '../entities/playlist.dart';

abstract class LibraryRepository {
  Future<PaginatedResponse<Playlist>> getMyPlaylists({int limit = 20, int offset = 0});
  Future<PaginatedResponse<Song>> getLikedSongs({int limit = 50, int offset = 0});
  Future<Playlist> getPlaylist(String id);
  Future<Playlist> createPlaylist({required String name, String? description, String? coverUrl, bool? isPublic});
  Future<Playlist> updatePlaylist(String id, {String? name, String? description, bool? isPublic});
  Future<void> deletePlaylist(String id);
  Future<Playlist> addSongsToPlaylist(String playlistId, List<String> songIds, {int? position});
  Future<void> removeSongFromPlaylist(String playlistId, String songId);
  Future<bool> toggleLike(String songId);
  Future<bool> isLiked(String songId);
}
