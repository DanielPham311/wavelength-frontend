// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_artist_follow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserArtistFollowImpl _$$UserArtistFollowImplFromJson(
  Map<String, dynamic> json,
) => _$UserArtistFollowImpl(
  id: json['id'] as String,
  followerId: json['followerId'] as String,
  artistId: json['artistId'] as String,
  followedAt: json['followedAt'] as String?,
);

Map<String, dynamic> _$$UserArtistFollowImplToJson(
  _$UserArtistFollowImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'followerId': instance.followerId,
  'artistId': instance.artistId,
  'followedAt': instance.followedAt,
};
