import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_artist_follow.freezed.dart';
part 'user_artist_follow.g.dart';

@freezed
class UserArtistFollow with _$UserArtistFollow {
  const factory UserArtistFollow({
    required String id,
    required String followerId,
    required String artistId,
    String? followedAt,
  }) = _UserArtistFollow;

  factory UserArtistFollow.fromJson(Map<String, dynamic> json) =>
      _$UserArtistFollowFromJson(json);
}
