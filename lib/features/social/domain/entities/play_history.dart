import 'package:freezed_annotation/freezed_annotation.dart';

part 'play_history.freezed.dart';
part 'play_history.g.dart';

@freezed
class PlayHistory with _$PlayHistory {
  const factory PlayHistory({
    required String id,
    required String songId,
    int? durationPlayed,
    String? playedAt,
  }) = _PlayHistory;

  factory PlayHistory.fromJson(Map<String, dynamic> json) =>
      _$PlayHistoryFromJson(json);
}
