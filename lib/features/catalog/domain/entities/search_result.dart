import 'package:freezed_annotation/freezed_annotation.dart';

import 'album.dart';
import 'artist.dart';
import 'song.dart';

part 'search_result.freezed.dart';

@freezed
class SearchResult with _$SearchResult {
  const factory SearchResult({
    required List<Song> songs,
    required List<Artist> artists,
    required List<Album> albums,
  }) = _SearchResult;
}
