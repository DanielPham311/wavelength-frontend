// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_artist_follow.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserArtistFollow _$UserArtistFollowFromJson(Map<String, dynamic> json) {
  return _UserArtistFollow.fromJson(json);
}

/// @nodoc
mixin _$UserArtistFollow {
  String get id => throw _privateConstructorUsedError;
  String get followerId => throw _privateConstructorUsedError;
  String get artistId => throw _privateConstructorUsedError;
  String? get followedAt => throw _privateConstructorUsedError;

  /// Serializes this UserArtistFollow to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserArtistFollow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserArtistFollowCopyWith<UserArtistFollow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserArtistFollowCopyWith<$Res> {
  factory $UserArtistFollowCopyWith(
    UserArtistFollow value,
    $Res Function(UserArtistFollow) then,
  ) = _$UserArtistFollowCopyWithImpl<$Res, UserArtistFollow>;
  @useResult
  $Res call({
    String id,
    String followerId,
    String artistId,
    String? followedAt,
  });
}

/// @nodoc
class _$UserArtistFollowCopyWithImpl<$Res, $Val extends UserArtistFollow>
    implements $UserArtistFollowCopyWith<$Res> {
  _$UserArtistFollowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserArtistFollow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? followerId = null,
    Object? artistId = null,
    Object? followedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            followerId: null == followerId
                ? _value.followerId
                : followerId // ignore: cast_nullable_to_non_nullable
                      as String,
            artistId: null == artistId
                ? _value.artistId
                : artistId // ignore: cast_nullable_to_non_nullable
                      as String,
            followedAt: freezed == followedAt
                ? _value.followedAt
                : followedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserArtistFollowImplCopyWith<$Res>
    implements $UserArtistFollowCopyWith<$Res> {
  factory _$$UserArtistFollowImplCopyWith(
    _$UserArtistFollowImpl value,
    $Res Function(_$UserArtistFollowImpl) then,
  ) = __$$UserArtistFollowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String followerId,
    String artistId,
    String? followedAt,
  });
}

/// @nodoc
class __$$UserArtistFollowImplCopyWithImpl<$Res>
    extends _$UserArtistFollowCopyWithImpl<$Res, _$UserArtistFollowImpl>
    implements _$$UserArtistFollowImplCopyWith<$Res> {
  __$$UserArtistFollowImplCopyWithImpl(
    _$UserArtistFollowImpl _value,
    $Res Function(_$UserArtistFollowImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserArtistFollow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? followerId = null,
    Object? artistId = null,
    Object? followedAt = freezed,
  }) {
    return _then(
      _$UserArtistFollowImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        followerId: null == followerId
            ? _value.followerId
            : followerId // ignore: cast_nullable_to_non_nullable
                  as String,
        artistId: null == artistId
            ? _value.artistId
            : artistId // ignore: cast_nullable_to_non_nullable
                  as String,
        followedAt: freezed == followedAt
            ? _value.followedAt
            : followedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserArtistFollowImpl implements _UserArtistFollow {
  const _$UserArtistFollowImpl({
    required this.id,
    required this.followerId,
    required this.artistId,
    this.followedAt,
  });

  factory _$UserArtistFollowImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserArtistFollowImplFromJson(json);

  @override
  final String id;
  @override
  final String followerId;
  @override
  final String artistId;
  @override
  final String? followedAt;

  @override
  String toString() {
    return 'UserArtistFollow(id: $id, followerId: $followerId, artistId: $artistId, followedAt: $followedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserArtistFollowImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.followerId, followerId) ||
                other.followerId == followerId) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.followedAt, followedAt) ||
                other.followedAt == followedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, followerId, artistId, followedAt);

  /// Create a copy of UserArtistFollow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserArtistFollowImplCopyWith<_$UserArtistFollowImpl> get copyWith =>
      __$$UserArtistFollowImplCopyWithImpl<_$UserArtistFollowImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserArtistFollowImplToJson(this);
  }
}

abstract class _UserArtistFollow implements UserArtistFollow {
  const factory _UserArtistFollow({
    required final String id,
    required final String followerId,
    required final String artistId,
    final String? followedAt,
  }) = _$UserArtistFollowImpl;

  factory _UserArtistFollow.fromJson(Map<String, dynamic> json) =
      _$UserArtistFollowImpl.fromJson;

  @override
  String get id;
  @override
  String get followerId;
  @override
  String get artistId;
  @override
  String? get followedAt;

  /// Create a copy of UserArtistFollow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserArtistFollowImplCopyWith<_$UserArtistFollowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
