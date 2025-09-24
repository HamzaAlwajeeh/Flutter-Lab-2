import 'package:audioplayers/audioplayers.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  getIt.registerSingleton<AudioPlayer>(AudioPlayer());
}
