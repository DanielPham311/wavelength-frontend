import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final String query;
  const SearchPage({super.key, required this.query});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search: $query')),
      body: const Center(child: Text('Search results — songs, artists, albums')),
    );
  }
}
