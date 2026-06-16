// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'play_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PlayHistory _$PlayHistoryFromJson(Map<String, dynamic> json) {
  return _PlayHistory.fromJson(json);
}

/// @nodoc
mixin _$PlayHistory {
  String get id => throw _privateConstructorUsedError;
  String get songId => throw _privateConstructorUsedError;
  int? get durationPlayed => throw _privateConstructorUsedError;
  String? get playedAt => throw _privateConstructorUsedError;

  /// Serializes this PlayHistory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlayHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayHistoryCopyWith<PlayHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayHistoryCopyWith<$Res> {
  factory $PlayHistoryCopyWith(
    PlayHistory value,
    $Res Function(PlayHistory) then,
  ) = _$PlayHistoryCopyWithImpl<$Res, PlayHistory>;
  @useResult
  $Res call({String id, String songId, int? durationPlayed, String? playedAt});
}

/// @nodoc
class _$PlayHistoryCopyWithImpl<$Res, $Val extends PlayHistory>
    implements $PlayHistoryCopyWith<$Res> {
  _$PlayHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? songId = null,
    Object? durationPlayed = freezed,
    Object? playedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            songId: null == songId
                ? _value.songId
                : songId // ignore: cast_nullable_to_non_nullable
                      as String,
            durationPlayed: freezed == durationPlayed
                ? _value.durationPlayed
                : durationPlayed // ignore: cast_nullable_to_non_nullable
                      as int?,
            playedAt: freezed == playedAt
                ? _value.playedAt
                : playedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PlayHistoryImplCopyWith<$Res>
    implements $PlayHistoryCopyWith<$Res> {
  factory _$$PlayHistoryImplCopyWith(
    _$PlayHistoryImpl value,
    $Res Function(_$PlayHistoryImpl) then,
  ) = __$$PlayHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String songId, int? durationPlayed, String? playedAt});
}

/// @nodoc
class __$$PlayHistoryImplCopyWithImpl<$Res>
    extends _$PlayHistoryCopyWithImpl<$Res, _$PlayHistoryImpl>
    implements _$$PlayHistoryImplCopyWith<$Res> {
  __$$PlayHistoryImplCopyWithImpl(
    _$PlayHistoryImpl _value,
    $Res Function(_$PlayHistoryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? songId = null,
    Object? durationPlayed = freezed,
    Object? playedAt = freezed,
  }) {
    return _then(
      _$PlayHistoryImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        songId: null == songId
            ? _value.songId
            : songId // ignore: cast_nullable_to_non_nullable
                  as String,
        durationPlayed: freezed == durationPlayed
            ? _value.durationPlayed
            : durationPlayed // ignore: cast_nullable_to_non_nullable
                  as int?,
        playedAt: freezed == playedAt
            ? _value.playedAt
            : playedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayHistoryImpl implements _PlayHistory {
  const _$PlayHistoryImpl({
    required this.id,
    required this.songId,
    this.durationPlayed,
    this.playedAt,
  });

  factory _$PlayHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayHistoryImplFromJson(json);

  @override
  final String id;
  @override
  final String songId;
  @override
  final int? durationPlayed;
  @override
  final String? playedAt;

  @override
  String toString() {
    return 'PlayHistory(id: $id, songId: $songId, durationPlayed: $durationPlayed, playedAt: $playedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayHistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.songId, songId) || other.songId == songId) &&
            (identical(other.durationPlayed, durationPlayed) ||
                other.durationPlayed == durationPlayed) &&
            (identical(other.playedAt, playedAt) ||
                other.playedAt == playedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, songId, durationPlayed, playedAt);

  /// Create a copy of PlayHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayHistoryImplCopyWith<_$PlayHistoryImpl> get copyWith =>
      __$$PlayHistoryImplCopyWithImpl<_$PlayHistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayHistoryImplToJson(this);
  }
}

abstract class _PlayHistory implements PlayHistory {
  const factory _PlayHistory({
    required final String id,
    required final String songId,
    final int? durationPlayed,
    final String? playedAt,
  }) = _$PlayHistoryImpl;

  factory _PlayHistory.fromJson(Map<String, dynamic> json) =
      _$PlayHistoryImpl.fromJson;

  @override
  String get id;
  @override
  String get songId;
  @override
  int? get durationPlayed;
  @override
  String? get playedAt;

  /// Create a copy of PlayHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayHistoryImplCopyWith<_$PlayHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
