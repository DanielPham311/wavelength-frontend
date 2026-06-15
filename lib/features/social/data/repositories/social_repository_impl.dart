import '../../../../core/network/api_response.dart';
import '../../../catalog/domain/entities/artist.dart';
import '../../../catalog/domain/entities/song.dart';
import '../../domain/entities/play_history.dart';
import '../../domain/repositories/social_repository.dart';
import '../datasources/social_remote_datasource.dart';

class SocialRepositoryImpl implements SocialRepository {
  final SocialRemoteDataSource _remote;

  SocialRepositoryImpl(this._remote);

  @override
  Future<void> recordPlay(String songId, int durationPlayed) async {
    await _remote.recordPlay({
      'songId': songId,
      'durationPlayed': durationPlayed,
    });
  }

  @override
  Future<PaginatedResponse<PlayHistory>> getRecentlyPlayed({int limit = 20, int offset = 0}) async {
    final res = await _remote.getRecentlyPlayed(limit, offset);
    return PaginatedResponse.fromJson(res.data, PlayHistory.fromJson);
  }

  @override
  Future<PaginatedResponse<Song>> getTrendingSongs({int limit = 20, int offset = 0}) async {
    final res = await _remote.getTrendingSongs(limit, offset);
    return PaginatedResponse.fromJson(res.data, Song.fromJson);
  }

  @override
  Future<bool> toggleFollow(String artistId) async {
    final res = await _remote.toggleFollow(artistId);
    return res.data['following'] as bool? ?? false;
  }

  @override
  Future<PaginatedResponse<Artist>> getFollowing({int limit = 20, int offset = 0}) async {
    final res = await _remote.getFollowing(limit, offset);
    return PaginatedResponse.fromJson(res.data, Artist.fromJson);
  }

  @override
  Future<bool> isFollowing(String artistId) async {
    final res = await _remote.isFollowing(artistId);
    return res.data['following'] as bool? ?? false;
  }
}
