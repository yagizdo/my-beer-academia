import 'package:flutter/material.dart';

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

      return ListView.builder(
          itemCount: data!.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                data[index].name!,
                style: const TextStyle(color: white),
              ),
            );
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
