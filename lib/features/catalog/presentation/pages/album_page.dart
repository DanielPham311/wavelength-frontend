import 'package:flutter/material.dart';

class AlbumPage extends StatelessWidget {
  final String albumId;
  const AlbumPage({super.key, required this.albumId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Album $albumId')),
      body: const Center(child: Text('Album detail — track list')),
    );
  }
}
