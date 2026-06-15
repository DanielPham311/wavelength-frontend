import 'package:flutter/material.dart';

class LikedSongsPage extends StatelessWidget {
  const LikedSongsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Liked Songs')),
      body: const Center(child: Text('Liked songs list')),
    );
  }
}
