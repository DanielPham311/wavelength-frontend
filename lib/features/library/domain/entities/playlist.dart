import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../catalog/domain/entities/song.dart';

part 'playlist.freezed.dart';
part 'playlist.g.dart';

@freezed
class Playlist with _$Playlist {
  const factory Playlist({
    required String id,
    required String ownerId,
    required String name,
    String? description,
    String? coverUrl,
    bool? isPublic,
    int? trackCount,
    List<Song>? songs,
  }) = _Playlist;

  factory Playlist.fromJson(Map<String, dynamic> json) =>
      _$PlaylistFromJson(json);
}
