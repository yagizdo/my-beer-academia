import 'package:flutter/material.dart';
import 'package:my_beer_academia/widgets/beer_card.dart';

import '../constants/app_colors.dart';

class BeerList extends StatelessWidget {
  BeerList({Key? key, required this.snapshot}) : super(key: key);
  var snapshot;

  @override
  Widget build(BuildContext context) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Center(
        child: CircularProgressIndicator(color: white,),
      );
    } else if (snapshot.hasError) {
      return Center(
        child: Text(
          'Error : ${snapshot.error}',
          style: const TextStyle(color: white),
        ),
      );
    } else if (snapshot.hasData) {
      var data = snapshot.data;

      return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 4/4.5),
          itemCount: data!.length,
          itemBuilder: (context, index) {
            return BeerCard(beer: data[index]);
          });
    } else {
      return Center(
        child: Text(
          'State : ${snapshot.connectionState}',
          style: const TextStyle(color: white),
        ),
      );
    }
  }
}
