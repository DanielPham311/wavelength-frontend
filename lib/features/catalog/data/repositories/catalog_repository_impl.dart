import 'package:dio/dio.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/network/api_response.dart';
import '../../../../core/utils/result.dart';
import '../../domain/entities/album.dart';
import '../../domain/entities/artist.dart';
import '../../domain/entities/song.dart';
import '../../domain/repositories/catalog_repository.dart';
import '../datasources/catalog_remote_datasource.dart';

class CatalogRepositoryImpl implements CatalogRepository {
  final CatalogRemoteDataSource _remote;

  CatalogRepositoryImpl(this._remote);

  @override
  Future<PaginatedResponse<Song>> getTrendingSongs({int limit = 20, int offset = 0}) async {
    final res = await _remote.getTrendingSongs(limit, offset);
    return PaginatedResponse.fromJson(res.data, Song.fromJson);
  }

  @override
  Future<Song> getSong(String id) async {
    final res = await _remote.getSong(id);
    return Song.fromJson(res.data);
  }

  @override
  Future<Artist> getArtist(String id) async {
    final res = await _remote.getArtist(id);
    return Artist.fromJson(res.data);
  }

  @override
  Future<PaginatedResponse<Song>> getArtistSongs(String artistId, {int limit = 20, int offset = 0}) async {
    final res = await _remote.getArtistSongs(artistId, limit, offset);
    return PaginatedResponse.fromJson(res.data, Song.fromJson);
  }

  @override
  Future<PaginatedResponse<Album>> getArtistAlbums(String artistId, {int limit = 20, int offset = 0}) async {
    final res = await _remote.getArtistAlbums(artistId, limit, offset);
    return PaginatedResponse.fromJson(res.data, Album.fromJson);
  }

  @override
  Future<Album> getAlbum(String id) async {
    final res = await _remote.getAlbum(id);
    return Album.fromJson(res.data);
  }

  @override
  Future<PaginatedResponse<Song>> getAlbumSongs(String albumId, {int limit = 20, int offset = 0}) async {
    // Album detail includes songs; adjust if backend has separate endpoint
    final res = await _remote.getAlbum(albumId);
    return PaginatedResponse.fromJson(res.data, Song.fromJson);
  }

  @override
  Future<SearchResult> search(String query, {String? type, int limit = 20, int offset = 0}) async {
    final res = await _remote.search(query, type, limit, offset);
    final data = res.data;
    return SearchResult(
      songs: (data['songs'] as List?)?.map((e) => Song.fromJson(e)).toList() ?? [],
      artists: (data['artists'] as List?)?.map((e) => Artist.fromJson(e)).toList() ?? [],
      albums: (data['albums'] as List?)?.map((e) => Album.fromJson(e)).toList() ?? [],
    );
  }
}
