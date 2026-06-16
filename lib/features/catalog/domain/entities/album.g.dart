// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlbumImpl _$$AlbumImplFromJson(Map<String, dynamic> json) => _$AlbumImpl(
  id: json['id'] as String,
  artistId: json['artistId'] as String,
  title: json['title'] as String,
  coverUrl: json['coverUrl'] as String?,
  releaseDate: json['releaseDate'] as String?,
  type: json['type'] as String?,
);

Map<String, dynamic> _$$AlbumImplToJson(_$AlbumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'artistId': instance.artistId,
      'title': instance.title,
      'coverUrl': instance.coverUrl,
      'releaseDate': instance.releaseDate,
      'type': instance.type,
    };
