// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PlayerState {
  Song? get currentSong => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Duration get position => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  List<Song> get queue => throw _privateConstructorUsedError;
  int get queueIndex => throw _privateConstructorUsedError;
  bool get shuffle => throw _privateConstructorUsedError;
  RepeatMode get repeatMode => throw _privateConstructorUsedError;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerStateCopyWith<PlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerStateCopyWith<$Res> {
  factory $PlayerStateCopyWith(
    PlayerState value,
    $Res Function(PlayerState) then,
  ) = _$PlayerStateCopyWithImpl<$Res, PlayerState>;
  @useResult
  $Res call({
    Song? currentSong,
    bool isPlaying,
    bool isLoading,
    Duration position,
    Duration duration,
    List<Song> queue,
    int queueIndex,
    bool shuffle,
    RepeatMode repeatMode,
  });

  $SongCopyWith<$Res>? get currentSong;
}

/// @nodoc
class _$PlayerStateCopyWithImpl<$Res, $Val extends PlayerState>
    implements $PlayerStateCopyWith<$Res> {
  _$PlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentSong = freezed,
    Object? isPlaying = null,
    Object? isLoading = null,
    Object? position = null,
    Object? duration = null,
    Object? queue = null,
    Object? queueIndex = null,
    Object? shuffle = null,
    Object? repeatMode = null,
  }) {
    return _then(
      _value.copyWith(
            currentSong: freezed == currentSong
                ? _value.currentSong
                : currentSong // ignore: cast_nullable_to_non_nullable
                      as Song?,
            isPlaying: null == isPlaying
                ? _value.isPlaying
                : isPlaying // ignore: cast_nullable_to_non_nullable
                      as bool,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            position: null == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                      as Duration,
            duration: null == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                      as Duration,
            queue: null == queue
                ? _value.queue
                : queue // ignore: cast_nullable_to_non_nullable
                      as List<Song>,
            queueIndex: null == queueIndex
                ? _value.queueIndex
                : queueIndex // ignore: cast_nullable_to_non_nullable
                      as int,
            shuffle: null == shuffle
                ? _value.shuffle
                : shuffle // ignore: cast_nullable_to_non_nullable
                      as bool,
            repeatMode: null == repeatMode
                ? _value.repeatMode
                : repeatMode // ignore: cast_nullable_to_non_nullable
                      as RepeatMode,
          )
          as $Val,
    );
  }

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SongCopyWith<$Res>? get currentSong {
    if (_value.currentSong == null) {
      return null;
    }

    return $SongCopyWith<$Res>(_value.currentSong!, (value) {
      return _then(_value.copyWith(currentSong: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayerStateImplCopyWith<$Res>
    implements $PlayerStateCopyWith<$Res> {
  factory _$$PlayerStateImplCopyWith(
    _$PlayerStateImpl value,
    $Res Function(_$PlayerStateImpl) then,
  ) = __$$PlayerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Song? currentSong,
    bool isPlaying,
    bool isLoading,
    Duration position,
    Duration duration,
    List<Song> queue,
    int queueIndex,
    bool shuffle,
    RepeatMode repeatMode,
  });

  @override
  $SongCopyWith<$Res>? get currentSong;
}

/// @nodoc
class __$$PlayerStateImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerStateImpl>
    implements _$$PlayerStateImplCopyWith<$Res> {
  __$$PlayerStateImplCopyWithImpl(
    _$PlayerStateImpl _value,
    $Res Function(_$PlayerStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentSong = freezed,
    Object? isPlaying = null,
    Object? isLoading = null,
    Object? position = null,
    Object? duration = null,
    Object? queue = null,
    Object? queueIndex = null,
    Object? shuffle = null,
    Object? repeatMode = null,
  }) {
    return _then(
      _$PlayerStateImpl(
        currentSong: freezed == currentSong
            ? _value.currentSong
            : currentSong // ignore: cast_nullable_to_non_nullable
                  as Song?,
        isPlaying: null == isPlaying
            ? _value.isPlaying
            : isPlaying // ignore: cast_nullable_to_non_nullable
                  as bool,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        position: null == position
            ? _value.position
            : position // ignore: cast_nullable_to_non_nullable
                  as Duration,
        duration: null == duration
            ? _value.duration
            : duration // ignore: cast_nullable_to_non_nullable
                  as Duration,
        queue: null == queue
            ? _value._queue
            : queue // ignore: cast_nullable_to_non_nullable
                  as List<Song>,
        queueIndex: null == queueIndex
            ? _value.queueIndex
            : queueIndex // ignore: cast_nullable_to_non_nullable
                  as int,
        shuffle: null == shuffle
            ? _value.shuffle
            : shuffle // ignore: cast_nullable_to_non_nullable
                  as bool,
        repeatMode: null == repeatMode
            ? _value.repeatMode
            : repeatMode // ignore: cast_nullable_to_non_nullable
                  as RepeatMode,
      ),
    );
  }
}

/// @nodoc

class _$PlayerStateImpl implements _PlayerState {
  const _$PlayerStateImpl({
    this.currentSong,
    this.isPlaying = false,
    this.isLoading = false,
    this.position = Duration.zero,
    this.duration = Duration.zero,
    final List<Song> queue = const [],
    this.queueIndex = 0,
    this.shuffle = false,
    this.repeatMode = RepeatMode.off,
  }) : _queue = queue;

  @override
  final Song? currentSong;
  @override
  @JsonKey()
  final bool isPlaying;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final Duration position;
  @override
  @JsonKey()
  final Duration duration;
  final List<Song> _queue;
  @override
  @JsonKey()
  List<Song> get queue {
    if (_queue is EqualUnmodifiableListView) return _queue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_queue);
  }

  @override
  @JsonKey()
  final int queueIndex;
  @override
  @JsonKey()
  final bool shuffle;
  @override
  @JsonKey()
  final RepeatMode repeatMode;

  @override
  String toString() {
    return 'PlayerState(currentSong: $currentSong, isPlaying: $isPlaying, isLoading: $isLoading, position: $position, duration: $duration, queue: $queue, queueIndex: $queueIndex, shuffle: $shuffle, repeatMode: $repeatMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerStateImpl &&
            (identical(other.currentSong, currentSong) ||
                other.currentSong == currentSong) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality().equals(other._queue, _queue) &&
            (identical(other.queueIndex, queueIndex) ||
                other.queueIndex == queueIndex) &&
            (identical(other.shuffle, shuffle) || other.shuffle == shuffle) &&
            (identical(other.repeatMode, repeatMode) ||
                other.repeatMode == repeatMode));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    currentSong,
    isPlaying,
    isLoading,
    position,
    duration,
    const DeepCollectionEquality().hash(_queue),
    queueIndex,
    shuffle,
    repeatMode,
  );

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerStateImplCopyWith<_$PlayerStateImpl> get copyWith =>
      __$$PlayerStateImplCopyWithImpl<_$PlayerStateImpl>(this, _$identity);
}

abstract class _PlayerState implements PlayerState {
  const factory _PlayerState({
    final Song? currentSong,
    final bool isPlaying,
    final bool isLoading,
    final Duration position,
    final Duration duration,
    final List<Song> queue,
    final int queueIndex,
    final bool shuffle,
    final RepeatMode repeatMode,
  }) = _$PlayerStateImpl;

  @override
  Song? get currentSong;
  @override
  bool get isPlaying;
  @override
  bool get isLoading;
  @override
  Duration get position;
  @override
  Duration get duration;
  @override
  List<Song> get queue;
  @override
  int get queueIndex;
  @override
  bool get shuffle;
  @override
  RepeatMode get repeatMode;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerStateImplCopyWith<_$PlayerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
