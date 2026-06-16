import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/auth/presentation/providers/auth_provider.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/home_page.dart';
import '../../features/catalog/presentation/pages/artist_page.dart';
import '../../features/catalog/presentation/pages/album_page.dart';
import '../../features/catalog/presentation/pages/search_page.dart';
import '../../features/library/presentation/pages/playlist_page.dart';
import '../../features/library/presentation/pages/liked_songs_page.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final authAsync = ref.watch(authNotifierProvider);

  return GoRouter(
    initialLocation: '/login',
    redirect: (context, state) {
      final isLoggedIn = authAsync.valueOrNull != null;
      final isLoginRoute = state.matchedLocation == '/login';

      if (!isLoggedIn && !isLoginRoute) return '/login';
      if (isLoggedIn && isLoginRoute) return '/home';
      return null;
    },
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/search',
        builder: (context, state) {
          final query = state.uri.queryParameters['q'] ?? '';
          return SearchPage(query: query);
        },
      ),
      GoRoute(
        path: '/artists/:id',
        builder: (context, state) =>
            ArtistPage(artistId: state.pathParameters['id']!),
      ),
      GoRoute(
        path: '/albums/:id',
        builder: (context, state) =>
            AlbumPage(albumId: state.pathParameters['id']!),
      ),
      GoRoute(
        path: '/playlists/:id',
        builder: (context, state) =>
            PlaylistPage(playlistId: state.pathParameters['id']!),
      ),
      GoRoute(
        path: '/liked_songs',
        builder: (context, state) => const LikedSongsPage(),
      ),
    ],
  );
});
