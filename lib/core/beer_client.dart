import 'package:dio/dio.dart';
import 'package:my_beer_academia/core/network_client.dart';
import 'package:my_beer_academia/models/beer.dart';

class BeerClient extends NetworkClient {

  Future<List<Beer>> getBeers(int page) async {
    // Beers List
    List<Beer> beers = [];

    // Get data from API
    // if per page = 100 you get error, pls write error handling for this errors
    Response response = await dio.get('$baseUrl/beers?page=$page&per_page=16');

    // Data parse
    List parsedList = response.data;

    // List to beers
    beers = parsedList.map((beer) => Beer.fromJson(beer)).toList();

    // return beers list
    return beers;
  }
}