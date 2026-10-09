import 'package:dio/dio.dart';

Future<dynamic> getHomePage() async {
  final dio = Dio();
  final response = await dio.get(
    'https://693d5ff7f55f1be79302a8ae.mockapi.io/api/v1/someData/1',
  );
  return response.data;
}
