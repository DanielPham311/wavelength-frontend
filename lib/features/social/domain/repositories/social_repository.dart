import '../../../../core/network/api_response.dart';
import '../../../catalog/domain/entities/artist.dart';
import '../../../catalog/domain/entities/song.dart';
import '../entities/play_history.dart';

abstract class SocialRepository {
  Future<void> recordPlay(String songId, int durationPlayed);
  Future<PaginatedResponse<PlayHistory>> getRecentlyPlayed({int limit = 20, int offset = 0});
  Future<PaginatedResponse<Song>> getTrendingSongs({int limit = 20, int offset = 0});
  Future<bool> toggleFollow(String artistId);
  Future<PaginatedResponse<Artist>> getFollowing({int limit = 20, int offset = 0});
  Future<bool> isFollowing(String artistId);
}
