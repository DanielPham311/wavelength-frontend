import '../../../../core/network/api_response.dart';
import '../entities/album.dart';
import '../entities/artist.dart';
import '../entities/song.dart';

abstract class CatalogRepository {
  Future<PaginatedResponse<Song>> getTrendingSongs({int limit = 20, int offset = 0});
  Future<Song> getSong(String id);
  Future<Artist> getArtist(String id);
  Future<PaginatedResponse<Song>> getArtistSongs(String artistId, {int limit = 20, int offset = 0});
  Future<PaginatedResponse<Album>> getArtistAlbums(String artistId, {int limit = 20, int offset = 0});
  Future<Album> getAlbum(String id);
  Future<PaginatedResponse<Song>> getAlbumSongs(String albumId, {int limit = 20, int offset = 0});
  Future<SearchResult> search(String query, {String? type, int limit = 20, int offset = 0});
}

@freezed
class SearchResult with _$SearchResult {
  const factory SearchResult({
    required List<Song> songs,
    required List<Artist> artists,
    required List<Album> albums,
  }) = _SearchResult;
}
