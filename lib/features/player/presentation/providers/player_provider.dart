import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';

import '../../domain/player_state.dart';

final audioPlayerProvider = Provider<AudioPlayer>((ref) {
  final player = AudioPlayer();
  ref.onDispose(player.dispose);
  return player;
});

final playerStateProvider =
    StateNotifierProvider<PlayerNotifier, PlayerState>((ref) {
  return PlayerNotifier(ref.watch(audioPlayerProvider));
});

class PlayerNotifier extends StateNotifier<PlayerState> {
  final AudioPlayer _player;

  PlayerNotifier(this._player) : super(const PlayerState()) {
    _player.playingStream.listen((playing) {
      state = state.copyWith(isPlaying: playing);
    });
    _player.positionStream.listen((pos) {
      state = state.copyWith(position: pos);
    });
    _player.durationStream.listen((dur) {
      if (dur != null) state = state.copyWith(duration: dur);
    });
  }

  Future<void> play(Song song) async {
    state = state.copyWith(currentSong: song, isLoading: true);
    // TODO: resolve stream URL from song.hlsUrl via StreamService
    // await _player.setUrl(song.hlsUrl);
    await _player.play();
    state = state.copyWith(isLoading: false);
  }

  Future<void> pause() => _player.pause();
  Future<void> resume() => _player.play();
  Future<void> seek(Duration pos) => _player.seek(pos);
  Future<void> next() async {
    // TODO: advance queue
  }

  Future<void> previous() async {
    // TODO: rewind queue
  }

  void toggleShuffle() {
    state = state.copyWith(shuffle: !state.shuffle);
  }

  void cycleRepeatMode() {
    final next = switch (state.repeatMode) {
      RepeatMode.off => RepeatMode.all,
      RepeatMode.all => RepeatMode.one,
      RepeatMode.one => RepeatMode.off,
    };
    state = state.copyWith(repeatMode: next);
  }
}
