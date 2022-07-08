// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beer_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BeerViewModel on _BeerViewModel, Store {
  late final _$beersAtom = Atom(name: '_BeerViewModel.beers', context: context);

  @override
  List<Beer> get beers {
    _$beersAtom.reportRead();
    return super.beers;
  }

  @override
  set beers(List<Beer> value) {
    _$beersAtom.reportWrite(value, super.beers, () {
      super.beers = value;
    });
  }

  late final _$fetchBeersAsyncAction =
      AsyncAction('_BeerViewModel.fetchBeers', context: context);

  @override
  Future<List<Beer>> fetchBeers(int page) {
    return _$fetchBeersAsyncAction.run(() => super.fetchBeers(page));
  }

  @override
  String toString() {
    return '''
beers: ${beers}
    ''';
  }
}
