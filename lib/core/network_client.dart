import 'package:dio/dio.dart';

class NetworkClient {

  // BaseURL of the API
  //https://api.punkapi.com/v2/beers?page=2&per_page=80
  final String baseUrl = 'https://api.punkapi.com/v2';

  // Dio instance
  final Dio dio = Dio();
}