import 'package:flutter/material.dart';
import 'package:my_beer_academia/constants/app_colors.dart';
import 'package:my_beer_academia/core/beer_client.dart';
import 'package:my_beer_academia/models/beer_view_model.dart';
import 'package:my_beer_academia/widgets/beer_list.dart';

import '../models/beer.dart';

class BeersView extends StatelessWidget {
  const BeersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Beer View Model
    BeerViewModel _beerViewModel = BeerViewModel(BeerClient());

    return Scaffold(
        appBar: AppBar(
          title: Text('Beers',style: TextStyle(color: black),),
        ),
        body: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: _beerViewModel.fetchBeers(1),
                builder:
                    (BuildContext context, AsyncSnapshot<List<Beer>> snapshot) {
                 return BeerList(
                    snapshot: snapshot,
                  );
                },
              ),
            ),
          ],
        ));
  }
}
