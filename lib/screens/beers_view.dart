import 'package:flutter/material.dart';

class BeersView extends StatelessWidget {
  const BeersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beers'),
      ),
      body: Center(
        child: Text('Beers'),
      ),
    );
  }
}
