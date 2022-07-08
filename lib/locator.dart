import 'package:my_beer_academia/core/post_client.dart';
import 'package:my_beer_academia/models/home_view_model.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton(PostClient());
  getIt.registerSingleton(HomeViewModel(getIt.get<PostClient>()));
}