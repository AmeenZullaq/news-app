import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  final String _baseUrl = 'https://newsapi.org/v2/';

  ApiService(this.dio);
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    Response response = await dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
