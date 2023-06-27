// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe_game_getx/controller/controllers.dart';

class MyPattern extends StatelessWidget {
  MyPattern({super.key});
  static final PatternsController patternsController = Get.find();

  List<Map> patternDetails = [
    {
      'name': 'Pattern1',
      'func': (int n) => patternsController.pattern1(n),
    },
    {
      'name': 'Pattern2',
      'func': (int n) => patternsController.pattern2(n),
    },
    {
      'name': 'Pattern3',
      'func': (int n) => patternsController.pattern3(n),
    },
    {
      'name': 'Pattern4',
      'func': (int n) => patternsController.pattern4(n),
    },
    {
      'name': 'Pattern5',
      'func': (int n) => patternsController.pattern5(n),
    },
    {
      'name': 'Pattern6',
      'func': (int n) => patternsController.pattern6(n),
    },
    {
      'name': 'Pattern7',
      'func': (int n) => patternsController.pattern7(n),
    },
    {
      'name': 'Pattern8',
      'func': (int n) => patternsController.pattern8(n),
    },
    {
      'name': 'Pattern9',
      'func': (int n) => patternsController.pattern9(n),
    },
    {
      'name': 'Pattern10',
      'func': (int n) => patternsController.pattern10(n),
    },
    {
      'name': 'Pattern11',
      'func': (int n) => patternsController.pattern11(n),
    },
    {
      'name': 'Pattern12',
      'func': (int n) => patternsController.pattern12(n),
    },
    {
      'name': 'Pattern13',
      'func': (int n) => patternsController.pattern13(n),
    },
    {
      'name': 'Pattern14',
      'func': (int n) => patternsController.pattern14(n),
    },
    {
      'name': 'Pattern15',
      'func': (int n) => patternsController.pattern15(n),
    },
    {
      'name': 'Pattern16',
      'func': (int n) => patternsController.pattern16(n),
    },
    {
      'name': 'Pattern17',
      'func': (int n) => patternsController.pattern17(n),
    },
    {
      'name': 'Pattern18',
      'func': (int n) => patternsController.pattern18(n),
    },
    {
      'name': 'Pattern19',
      'func': (int n) => patternsController.pattern19(n),
    },
    {
      'name': 'Pattern20',
      'func': (int n) => patternsController.pattern20(n),
    },
    {
      'name': 'Pattern21',
      'func': (int n) => patternsController.pattern21(n),
    },
    {
      'name': 'Pattern22',
      'func': (int n) => patternsController.pattern22(n),
    },
    {
      'name': 'Pattern23',
      'func': (int n) => patternsController.pattern23(n),
    },
    {
      'name': 'Pattern24',
      'func': (int n) => patternsController.pattern24(n),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
              ),
              controller: patternsController.txtPatternController,
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: patternDetails.length,
                itemBuilder: ((context, index) {
                  return MaterialButton(
                    onPressed: () {
                      patternDetails[index]['func'](int.parse(
                          patternsController.txtPatternController.text));
                    },
                    color: Colors.red[200],
                    shape: const StadiumBorder(),
                    child: Text(patternDetails[index]['name']),
                  );
                }),
              ),
            ),
            Obx(
              () => Container(
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                height: 230,
                decoration: BoxDecoration(
                  color: Colors.red[200],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Pattern : ',
                      style: TextStyle(fontSize: 20),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            patternsController.patternResult.value,
                            style: const TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
