// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SongImpl _$$SongImplFromJson(Map<String, dynamic> json) => _$SongImpl(
  id: json['id'] as String,
  artistId: json['artistId'] as String,
  albumId: json['albumId'] as String?,
  title: json['title'] as String,
  duration: (json['duration'] as num?)?.toInt(),
  bitrate: (json['bitrate'] as num?)?.toInt(),
  format: json['format'] as String?,
  coverUrl: json['coverUrl'] as String?,
  playCount: (json['playCount'] as num?)?.toInt(),
  trendingScore: (json['trendingScore'] as num?)?.toDouble(),
  uploadStatus: json['uploadStatus'] as String?,
);

Map<String, dynamic> _$$SongImplToJson(_$SongImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'artistId': instance.artistId,
      'albumId': instance.albumId,
      'title': instance.title,
      'duration': instance.duration,
      'bitrate': instance.bitrate,
      'format': instance.format,
      'coverUrl': instance.coverUrl,
      'playCount': instance.playCount,
      'trendingScore': instance.trendingScore,
      'uploadStatus': instance.uploadStatus,
    };
