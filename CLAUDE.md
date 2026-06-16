# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build & Dev Commands

```bash
# Install dependencies
flutter pub get

# Code generation (run after any change to @riverpod, @freezed, @RestApi, @JsonSerializable)
dart run build_runner build --delete-conflicting-outputs

# Run the app (default API: localhost:8080)
flutter run
flutter run --dart-define=API_BASE_URL=http://your-api:8080/api/v1

# Run all tests
flutter test

# Run single test file
flutter test test/features/auth/domain/usecases/login_test.dart

# Run single test by name
flutter test --name "should return tokens on successful login"

# Lint
flutter analyze
```

## Architecture

Clean architecture with feature-first folder structure. Each feature (auth, catalog, library, player, social) has three layers:

- **domain/** — entities (freezed), repository interfaces, usecases
- **data/** — DTO models (freezed + json_serializable), Retrofit datasources, repository impls
- **presentation/** — Riverpod notifiers/providers, pages, widgets

`core/` holds shared infrastructure: GoRouter config, Dio client with auth interceptor, Material 3 dark theme, Result<T> sealed class, `Failure`/`Exception` types, and `AppConfig` (API base URL via `--dart-define`).

## Key Patterns

**State management**: Riverpod 2.x with `@riverpod` generator annotation. Notifiers extend `_$Notifier`. Providers return interfaces; impls wired via `ref.watch`.

**Networking**: Dio + Retrofit. Define interfaces with `@RestApi()` + `@GET/@POST` annotations, injected with Dio instance. Auth interceptor reads JWT from `FlutterSecureStorage` and attaches Bearer header. All API calls return `Result<T>` (success or failure).

**Models**: Freezed for immutable domain entities, freezed + `@JsonSerializable` for data DTOs. Run code generation after any model change.

**Dependency direction**: presentation → domain ← data. Features don't import each other; shared deps go through `core/` or are provided at `ProviderScope` level.
