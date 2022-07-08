import 'package:mobx/mobx.dart';
import 'package:my_beer_academia/core/beer_client.dart';

import 'beer.dart';

part 'beer_view_model.g.dart';

class BeerViewModel = _BeerViewModel with _$BeerViewModel;

abstract class _BeerViewModel with Store {
  // Constructor for beerviewmodel
  _BeerViewModel(BeerClient client) : _client = client;

  // Beer Client
  final BeerClient _client;

  // Beers List
  @observable
  List<Beer> beers = [];

  // Get Beers
  @action
  Future<List<Beer>> fetchBeers(int page) async {
    // Get Beers on Beers Client
    beers = await _client.getBeers(page);

    // return beers list
    return beers;
  }
}
