import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/login_request.dart';
import '../models/register_request.dart';

part 'auth_remote_datasource.g.dart';

@RestApi()
abstract class AuthRemoteDataSource {
  factory AuthRemoteDataSource(Dio dio) = _AuthRemoteDataSource;

  @POST('/auth/login')
  Future<HttpResponse<Map<String, dynamic>>> login(
    @Body() LoginRequest request,
  );

  @POST('/auth/register')
  Future<HttpResponse<Map<String, dynamic>>> register(
    @Body() RegisterRequest request,
  );

  @POST('/auth/refresh')
  Future<HttpResponse<Map<String, dynamic>>> refreshToken(
    @Body() Map<String, String> body,
  );

  @POST('/auth/logout')
  Future<HttpResponse<void>> logout();

  @GET('/auth/me')
  Future<HttpResponse<Map<String, dynamic>>> getProfile();

  @PUT('/users/me')
  Future<HttpResponse<Map<String, dynamic>>> updateProfile(
    @Body() Map<String, dynamic> body,
  );
}
