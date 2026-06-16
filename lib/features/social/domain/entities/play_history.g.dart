// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayHistoryImpl _$$PlayHistoryImplFromJson(Map<String, dynamic> json) =>
    _$PlayHistoryImpl(
      id: json['id'] as String,
      songId: json['songId'] as String,
      durationPlayed: (json['durationPlayed'] as num?)?.toInt(),
      playedAt: json['playedAt'] as String?,
    );

Map<String, dynamic> _$$PlayHistoryImplToJson(_$PlayHistoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'songId': instance.songId,
      'durationPlayed': instance.durationPlayed,
      'playedAt': instance.playedAt,
    };
