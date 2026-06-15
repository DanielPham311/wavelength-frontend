# Wavelength — Flutter Frontend

Music streaming app. Flutter frontend for the Wavelength Spring Boot backend.

## Project Structure

```
lib/
├── main.dart                    # App entry point
├── core/                        # Shared infrastructure
│   ├── config/                  # AppConfig, GoRouter
│   ├── constants/               # Storage keys
│   ├── errors/                  # Exceptions, Failures, Result type
│   ├── network/                 # Dio client, PaginatedResponse
│   ├── theme/                   # Material 3 dark theme
│   └── utils/                   # Result<T> sealed class
└── features/                    # Feature modules (clean architecture)
    ├── auth/                    # Login, register, profile
    │   ├── data/                # Models, remote datasources, repository impl
    │   ├── domain/              # Entities, repository interface, usecases
    │   └── presentation/        # Pages, widgets, Riverpod providers
    ├── catalog/                 # Songs, artists, albums, search
    ├── library/                 # Playlists, liked songs
    ├── player/                  # Audio playback (just_audio)
    └── social/                  # Play history, trending, follows
```

Each feature follows clean architecture:

- **domain/** — entities (freezed), repository interfaces, usecases
- **data/** — DTO models (freezed + json_serializable), Retrofit datasources, repository impls
- **presentation/** — Riverpod notifiers/providers, pages, widgets

## Getting Started

1. Ensure Flutter 3.32+ is installed
2. Copy the backend `.env` and start the Spring Boot API
3. Configure API URL in `lib/core/config/app_config.dart` (or via `--dart-define=API_BASE_URL=...`)
4. Run code generation:
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```
5. Run the app:
   ```bash
   flutter run
   ```

## State Management

Riverpod 2.x with code generation (`@riverpod` annotation). All providers in `presentation/providers/`.

## Networking

Dio + Retrofit. Auth interceptor attaches JWT bearer token from `FlutterSecureStorage`. 401 triggers token refresh or logout.

## Audio

`just_audio` for playback. `audio_service` for background playback + lock screen controls (TODO).
