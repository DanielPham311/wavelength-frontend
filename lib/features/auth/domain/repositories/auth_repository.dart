import '../../../../core/utils/result.dart';
import '../entities/auth_tokens.dart';
import '../entities/user.dart';

abstract class AuthRepository {
  Future<Result<AuthTokens>> login(String email, String password);
  Future<Result<AuthTokens>> register({
    required String email,
    required String password,
    String? displayName,
  });
  Future<Result<void>> logout();
  Future<Result<User>> getProfile();
  Future<Result<User>> updateProfile({
    String? displayName,
    String? avatarUrl,
    String? bitratePref,
  });
  Future<Result<AuthTokens>> refreshToken(String refreshToken);
}
