import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../../core/constants/storage_keys.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/utils/result.dart';
import '../../domain/entities/auth_tokens.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_datasource.dart';
import '../models/login_request.dart';
import '../models/register_request.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remote;
  final FlutterSecureStorage _storage;

  AuthRepositoryImpl(this._remote, this._storage);

  @override
  Future<Result<AuthTokens>> login(String email, String password) async {
    try {
      final res = await _remote.login(LoginRequest(email: email, password: password));
      final tokens = AuthTokens.fromJson(res.data);
      await _storage.write(key: StorageKeys.accessToken, value: tokens.accessToken);
      await _storage.write(key: StorageKeys.refreshToken, value: tokens.refreshToken);
      return Result.success(tokens);
    } on DioException catch (e) {
      return Result.failure(_mapDioError(e));
    }
  }

  @override
  Future<Result<AuthTokens>> register({
    required String email,
    required String password,
    String? displayName,
  }) async {
    try {
      final res = await _remote.register(RegisterRequest(
        email: email,
        password: password,
        displayName: displayName,
      ));
      final tokens = AuthTokens.fromJson(res.data);
      await _storage.write(key: StorageKeys.accessToken, value: tokens.accessToken);
      await _storage.write(key: StorageKeys.refreshToken, value: tokens.refreshToken);
      return Result.success(tokens);
    } on DioException catch (e) {
      return Result.failure(_mapDioError(e));
    }
  }

  @override
  Future<Result<void>> logout() async {
    try {
      await _remote.logout();
      await _storage.deleteAll();
      return const Result.success(null);
    } on DioException catch (e) {
      return Result.failure(_mapDioError(e));
    }
  }

  @override
  Future<Result<User>> getProfile() async {
    try {
      final res = await _remote.getProfile();
      return Result.success(User.fromJson(res.data));
    } on DioException catch (e) {
      return Result.failure(_mapDioError(e));
    }
  }

  @override
  Future<Result<User>> updateProfile({
    String? displayName,
    String? avatarUrl,
    String? bitratePref,
  }) async {
    try {
      final body = <String, dynamic>{};
      if (displayName != null) body['displayName'] = displayName;
      if (avatarUrl != null) body['avatarUrl'] = avatarUrl;
      if (bitratePref != null) body['bitratePref'] = bitratePref;

      final res = await _remote.updateProfile(body);
      return Result.success(User.fromJson(res.data));
    } on DioException catch (e) {
      return Result.failure(_mapDioError(e));
    }
  }

  @override
  Future<Result<AuthTokens>> refreshToken(String refreshToken) async {
    try {
      final res = await _remote.refreshToken({'refreshToken': refreshToken});
      final tokens = AuthTokens.fromJson(res.data);
      await _storage.write(key: StorageKeys.accessToken, value: tokens.accessToken);
      await _storage.write(key: StorageKeys.refreshToken, value: tokens.refreshToken);
      return Result.success(tokens);
    } on DioException catch (e) {
      return Result.failure(_mapDioError(e));
    }
  }

  Failure _mapDioError(DioException e) {
    final status = e.response?.statusCode;
    final msg = e.response?.data?['error']?.toString() ?? e.message ?? 'Unknown error';
    return switch (status) {
      401 => const Failure.unauthorized(),
      403 => const Failure.forbidden(),
      404 => Failure.notFound('Resource'),
      422 || 400 => Failure.validation(msg),
      null => Failure.network(msg),
      _ => Failure.server(msg),
    };
  }
}
