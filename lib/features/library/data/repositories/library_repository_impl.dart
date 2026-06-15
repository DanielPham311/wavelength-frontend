import 'package:dio/dio.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/network/api_response.dart';
import '../../../../core/utils/result.dart';
import '../../../catalog/domain/entities/song.dart';
import '../../domain/entities/playlist.dart';
import '../../domain/repositories\library_repository.dart';
import '../datasources/library_remote_datasource.dart';

class LibraryRepositoryImpl implements LibraryRepository {
  final LibraryRemoteDataSource _remote;

  LibraryRepositoryImpl(this._remote);

  @override
  Future<PaginatedResponse<Playlist>> getMyPlaylists({int limit = 20, int offset = 0}) async {
    final res = await _remote.getMyPlaylists(limit, offset);
    return PaginatedResponse.fromJson(res.data, Playlist.fromJson);
  }

  @override
  Future<PaginatedResponse<Song>> getLikedSongs({int limit = 50, int offset = 0}) async {
    final res = await _remote.getLikedSongs(limit, offset);
    return PaginatedResponse.fromJson(res.data, Song.fromJson);
  }

  @override
  Future<Playlist> getPlaylist(String id) async {
    final res = await _remote.getPlaylist(id);
    return Playlist.fromJson(res.data);
  }

  @override
  Future<Playlist> createPlaylist({
    required String name,
    String? description,
    String? coverUrl,
    bool? isPublic,
  }) async {
    final body = <String, dynamic>{'name': name};
    if (description != null) body['description'] = description;
    if (coverUrl != null) body['coverUrl'] = coverUrl;
    if (isPublic != null) body['isPublic'] = isPublic;

    final res = await _remote.createPlaylist(body);
    return Playlist.fromJson(res.data);
  }

  @override
  Future<Playlist> updatePlaylist(String id, {String? name, String? description, bool? isPublic}) async {
    final body = <String, dynamic>{};
    if (name != null) body['name'] = name;
    if (description != null) body['description'] = description;
    if (isPublic != null) body['isPublic'] = isPublic;

    final res = await _remote.updatePlaylist(id, body);
    return Playlist.fromJson(res.data);
  }

  @override
  Future<void> deletePlaylist(String id) async {
    await _remote.deletePlaylist(id);
  }

  @override
  Future<Playlist> addSongsToPlaylist(String playlistId, List<String> songIds, {int? position}) async {
    final body = <String, dynamic>{'songIds': songIds};
    if (position != null) body['position'] = position;

    final res = await _remote.addSongsToPlaylist(playlistId, body);
    return Playlist.fromJson(res.data);
  }

  @override
  Future<void> removeSongFromPlaylist(String playlistId, String songId) async {
    await _remote.removeSongFromPlaylist(playlistId, songId);
  }

  @override
  Future<bool> toggleLike(String songId) async {
    final res = await _remote.toggleLike(songId);
    return res.data['liked'] as bool? ?? false;
  }

  @override
  Future<bool> isLiked(String songId) async {
    // Backend doesn't have a dedicated isLiked endpoint; use toggle response or track locally
    // TODO: implement if backend adds GET /songs/{id}/like
    return false;
  }
}
