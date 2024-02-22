import 'package:dio/dio.dart';

final dio = Dio();

const String baseUrl = 'http://localhost:3000';

class Api {
  static Future<Response> register(
      {required String username,
      required String email,
      required String password}) async {
    try {
      final response = await dio.post('$baseUrl/signup',
          data: {
            'username': username,
            'email': email,
            'password': password,
          },
          options: Options(
            headers: {
              'Content-Type': 'application/x-www-form-urlencoded',
            },
          ));
      return response;
    } on DioException catch (e) {
      return e.response!;
    }
  }

  static Future<Response> login(
      {required String email, required String password}) async {
    try {
      final response = await dio.post('$baseUrl/login',
          data: {
            'email': email,
            'password': password,
          },
          options: Options(
            headers: {
              'Content-Type': 'application/x-www-form-urlencoded',
            },
          ));
      print(response.data[2]);
      return response;
    } on DioException catch (e) {
      return e.response!;
    }
  }
}
