import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe_game_getx/controller/controllers.dart';

class TicTacToeGetX extends StatelessWidget {
  TicTacToeGetX({super.key});
  final GetXGameController gameController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white70,
        titleTextStyle: const TextStyle(
          fontStyle: FontStyle.italic,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        title: const Text(
          'Zero Cross Game',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 225,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Obx(
                      () => Text(
                        gameController.answer.value,
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    gameController.clearData();
                  },
                  child: Container(
                    height: 50,
                    width: 225,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Text(
                        'ReStart',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: Obx(
                  () => GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: gameController.ans.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemBuilder: (ccontext, index) => GestureDetector(
                      onTap: () {
                        gameController.turnController(index);
                      },
                      child: Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            gameController.ans[index],
                            style: const TextStyle(
                              fontSize: 50,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
