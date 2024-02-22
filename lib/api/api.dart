import 'package:dio/dio.dart';

final dio = Dio();

const String baseUrl = 'http://localhost:3000';

class Api {
  static Future<Response> register(
      {required String name,
      required String username,
      required String email,
      required String password}) async {
    try {
      final response = await dio.post(
        '$baseUrl/register',
        data: {
          'name': name,
          'username': username,
          'email': email,
          'password': password,
        },
      );
      return response;
    } on DioError catch (e) {
      return e.response!;
    }
  }

  static Future<Response> login(
      {required String email, required String password}) async {
    try {
      final response = await dio.post(
        '$baseUrl/login',
        data: {
          'email': email,
          'password': password,
        },
      );
      return response;
    } on DioError catch (e) {
      return e.response!;
    }
  }
}
