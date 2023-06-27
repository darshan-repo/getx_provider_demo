import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_game_getx/controller/controllers.dart';

class TicTacToeProvider extends StatelessWidget {
  const TicTacToeProvider({super.key});

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
                    child: Consumer<GameProviderController>(
                      builder: (context, obj, child) => Text(
                        obj.answer,
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<GameProviderController>().clearData();
                    // Provider.of<GameProviderController>(context, listen: false)
                    //     .clearData();
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
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: context.read<GameProviderController>().ans.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (ccontext, index) => GestureDetector(
                    onTap: () {
                      context
                          .read<GameProviderController>()
                          .turnController(index);
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
                        child: Selector<GameProviderController, String>(
                          builder: (context, obj, child) {
                            return Text(
                              obj.toString(),
                              style: const TextStyle(
                                fontSize: 50,
                              ),
                            );
                          },
                          selector: (context, obj) => obj.ans[index],
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
