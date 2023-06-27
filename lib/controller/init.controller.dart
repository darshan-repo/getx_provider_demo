import 'package:get/get.dart';
import 'package:tic_tac_toe_game_getx/controller/controllers.dart';

class InitController {
  static void get init {
    Get.lazyPut(() => GetXGameController());
    Get.lazyPut(() => PatternsController());
  }
}
