import 'package:freezed_annotation/freezed_annotation.dart';

part 'song.freezed.dart';
part 'song.g.dart';

@freezed
class Song with _$Song {
  const factory Song({
    required String id,
    required String artistId,
    String? albumId,
    required String title,
    int? duration,
    int? bitrate,
    String? format,
    String? coverUrl,
    int? playCount,
    double? trendingScore,
    String? uploadStatus,
  }) = _Song;

  factory Song.fromJson(Map<String, dynamic> json) => _$SongFromJson(json);
}
