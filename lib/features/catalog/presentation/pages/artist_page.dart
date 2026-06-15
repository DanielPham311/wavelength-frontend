import 'package:flutter/material.dart';

class ArtistPage extends StatelessWidget {
  final String artistId;
  const ArtistPage({super.key, required this.artistId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Artist $artistId')),
      body: const Center(child: Text('Artist detail — songs, albums, follow')),
    );
  }
}
