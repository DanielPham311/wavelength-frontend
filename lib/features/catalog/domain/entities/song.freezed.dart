// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Song _$SongFromJson(Map<String, dynamic> json) {
  return _Song.fromJson(json);
}

/// @nodoc
mixin _$Song {
  String get id => throw _privateConstructorUsedError;
  String get artistId => throw _privateConstructorUsedError;
  String? get albumId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  int? get bitrate => throw _privateConstructorUsedError;
  String? get format => throw _privateConstructorUsedError;
  String? get coverUrl => throw _privateConstructorUsedError;
  int? get playCount => throw _privateConstructorUsedError;
  double? get trendingScore => throw _privateConstructorUsedError;
  String? get uploadStatus => throw _privateConstructorUsedError;

  /// Serializes this Song to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Song
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SongCopyWith<Song> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongCopyWith<$Res> {
  factory $SongCopyWith(Song value, $Res Function(Song) then) =
      _$SongCopyWithImpl<$Res, Song>;
  @useResult
  $Res call({
    String id,
    String artistId,
    String? albumId,
    String title,
    int? duration,
    int? bitrate,
    String? format,
    String? coverUrl,
    int? playCount,
    double? trendingScore,
    String? uploadStatus,
  });
}

/// @nodoc
class _$SongCopyWithImpl<$Res, $Val extends Song>
    implements $SongCopyWith<$Res> {
  _$SongCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Song
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? artistId = null,
    Object? albumId = freezed,
    Object? title = null,
    Object? duration = freezed,
    Object? bitrate = freezed,
    Object? format = freezed,
    Object? coverUrl = freezed,
    Object? playCount = freezed,
    Object? trendingScore = freezed,
    Object? uploadStatus = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            artistId: null == artistId
                ? _value.artistId
                : artistId // ignore: cast_nullable_to_non_nullable
                      as String,
            albumId: freezed == albumId
                ? _value.albumId
                : albumId // ignore: cast_nullable_to_non_nullable
                      as String?,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            duration: freezed == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                      as int?,
            bitrate: freezed == bitrate
                ? _value.bitrate
                : bitrate // ignore: cast_nullable_to_non_nullable
                      as int?,
            format: freezed == format
                ? _value.format
                : format // ignore: cast_nullable_to_non_nullable
                      as String?,
            coverUrl: freezed == coverUrl
                ? _value.coverUrl
                : coverUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            playCount: freezed == playCount
                ? _value.playCount
                : playCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            trendingScore: freezed == trendingScore
                ? _value.trendingScore
                : trendingScore // ignore: cast_nullable_to_non_nullable
                      as double?,
            uploadStatus: freezed == uploadStatus
                ? _value.uploadStatus
                : uploadStatus // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SongImplCopyWith<$Res> implements $SongCopyWith<$Res> {
  factory _$$SongImplCopyWith(
    _$SongImpl value,
    $Res Function(_$SongImpl) then,
  ) = __$$SongImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String artistId,
    String? albumId,
    String title,
    int? duration,
    int? bitrate,
    String? format,
    String? coverUrl,
    int? playCount,
    double? trendingScore,
    String? uploadStatus,
  });
}

/// @nodoc
class __$$SongImplCopyWithImpl<$Res>
    extends _$SongCopyWithImpl<$Res, _$SongImpl>
    implements _$$SongImplCopyWith<$Res> {
  __$$SongImplCopyWithImpl(_$SongImpl _value, $Res Function(_$SongImpl) _then)
    : super(_value, _then);

  /// Create a copy of Song
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? artistId = null,
    Object? albumId = freezed,
    Object? title = null,
    Object? duration = freezed,
    Object? bitrate = freezed,
    Object? format = freezed,
    Object? coverUrl = freezed,
    Object? playCount = freezed,
    Object? trendingScore = freezed,
    Object? uploadStatus = freezed,
  }) {
    return _then(
      _$SongImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        artistId: null == artistId
            ? _value.artistId
            : artistId // ignore: cast_nullable_to_non_nullable
                  as String,
        albumId: freezed == albumId
            ? _value.albumId
            : albumId // ignore: cast_nullable_to_non_nullable
                  as String?,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        duration: freezed == duration
            ? _value.duration
            : duration // ignore: cast_nullable_to_non_nullable
                  as int?,
        bitrate: freezed == bitrate
            ? _value.bitrate
            : bitrate // ignore: cast_nullable_to_non_nullable
                  as int?,
        format: freezed == format
            ? _value.format
            : format // ignore: cast_nullable_to_non_nullable
                  as String?,
        coverUrl: freezed == coverUrl
            ? _value.coverUrl
            : coverUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        playCount: freezed == playCount
            ? _value.playCount
            : playCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        trendingScore: freezed == trendingScore
            ? _value.trendingScore
            : trendingScore // ignore: cast_nullable_to_non_nullable
                  as double?,
        uploadStatus: freezed == uploadStatus
            ? _value.uploadStatus
            : uploadStatus // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SongImpl implements _Song {
  const _$SongImpl({
    required this.id,
    required this.artistId,
    this.albumId,
    required this.title,
    this.duration,
    this.bitrate,
    this.format,
    this.coverUrl,
    this.playCount,
    this.trendingScore,
    this.uploadStatus,
  });

  factory _$SongImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongImplFromJson(json);

  @override
  final String id;
  @override
  final String artistId;
  @override
  final String? albumId;
  @override
  final String title;
  @override
  final int? duration;
  @override
  final int? bitrate;
  @override
  final String? format;
  @override
  final String? coverUrl;
  @override
  final int? playCount;
  @override
  final double? trendingScore;
  @override
  final String? uploadStatus;

  @override
  String toString() {
    return 'Song(id: $id, artistId: $artistId, albumId: $albumId, title: $title, duration: $duration, bitrate: $bitrate, format: $format, coverUrl: $coverUrl, playCount: $playCount, trendingScore: $trendingScore, uploadStatus: $uploadStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.albumId, albumId) || other.albumId == albumId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.bitrate, bitrate) || other.bitrate == bitrate) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.coverUrl, coverUrl) ||
                other.coverUrl == coverUrl) &&
            (identical(other.playCount, playCount) ||
                other.playCount == playCount) &&
            (identical(other.trendingScore, trendingScore) ||
                other.trendingScore == trendingScore) &&
            (identical(other.uploadStatus, uploadStatus) ||
                other.uploadStatus == uploadStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    artistId,
    albumId,
    title,
    duration,
    bitrate,
    format,
    coverUrl,
    playCount,
    trendingScore,
    uploadStatus,
  );

  /// Create a copy of Song
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SongImplCopyWith<_$SongImpl> get copyWith =>
      __$$SongImplCopyWithImpl<_$SongImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SongImplToJson(this);
  }
}

abstract class _Song implements Song {
  const factory _Song({
    required final String id,
    required final String artistId,
    final String? albumId,
    required final String title,
    final int? duration,
    final int? bitrate,
    final String? format,
    final String? coverUrl,
    final int? playCount,
    final double? trendingScore,
    final String? uploadStatus,
  }) = _$SongImpl;

  factory _Song.fromJson(Map<String, dynamic> json) = _$SongImpl.fromJson;

  @override
  String get id;
  @override
  String get artistId;
  @override
  String? get albumId;
  @override
  String get title;
  @override
  int? get duration;
  @override
  int? get bitrate;
  @override
  String? get format;
  @override
  String? get coverUrl;
  @override
  int? get playCount;
  @override
  double? get trendingScore;
  @override
  String? get uploadStatus;

  /// Create a copy of Song
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SongImplCopyWith<_$SongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
