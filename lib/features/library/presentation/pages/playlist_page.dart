import 'package:flutter/material.dart';

class PlaylistPage extends StatelessWidget {
  final String playlistId;
  const PlaylistPage({super.key, required this.playlistId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Playlist $playlistId')),
      body: const Center(child: Text('Playlist detail — songs, edit, delete')),
    );
  }
}
