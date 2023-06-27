import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_game_getx/controller/controllers.dart';
import 'package:tic_tac_toe_game_getx/getx.files/tic_tac_toe.getx.dart';
import 'package:tic_tac_toe_game_getx/controller/init.controller.dart';
import 'package:tic_tac_toe_game_getx/getx.files/patterns.getx.dart';
import 'package:tic_tac_toe_game_getx/providers.files/tic_tac_toe.provider.dart';

void main() {
  InitController.init;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GameProviderController()),
      ],
      child: GetMaterialApp(
        home: MyPattern(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}

class TicTacToe extends StatelessWidget {
  TicTacToe({super.key});
  final GetXGameController gameController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TicTacToeGetX(),
                      ),
                    );
                  },
                  color: Colors.red[100],
                  child: const Text('Tic Tac Toe (GetX)'),
                ),
                const SizedBox(
                  height: 50,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyPattern(),
                      ),
                    );
                  },
                  color: Colors.red[100],
                  child: const Text('Pattern (GetX)'),
                ),
                const SizedBox(
                  height: 50,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TicTacToeProvider(),
                      ),
                    );
                  },
                  color: Colors.red[100],
                  child: const Text('Tic Tac Toe (Provider)'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
