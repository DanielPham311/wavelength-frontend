import 'package:freezed_annotation/freezed_annotation.dart';

import '../../catalog/domain/entities/song.dart';

part 'player_state.freezed.dart';

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState({
    Song? currentSong,
    @Default(false) bool isPlaying,
    @Default(false) bool isLoading,
    @Default(Duration.zero) Duration position,
    @Default(Duration.zero) Duration duration,
    @Default([]) List<Song> queue,
    @Default(0) int queueIndex,
    @Default(false) bool shuffle,
    @Default(RepeatMode.off) RepeatMode repeatMode,
  }) = _PlayerState;
}

enum RepeatMode { off, one, all }
