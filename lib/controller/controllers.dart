// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXGameController extends GetxController {
  RxString answer = ''.obs;
  RxBool trueFalse = false.obs, win = false.obs;
  RxInt n = 0.obs;

  RxList<String> ans = <String>['', '', '', '', '', '', '', '', ''].obs;
  winner() {
    n++;
    if (n >= 5) {
      if ((ans[0] == ans[1] && ans[1] == ans[2]) ||
          (ans[0] == ans[3] && ans[3] == ans[6]) ||
          (ans[0] == ans[4] && ans[4] == ans[8]) && ans[0] != '') {
        answer.value = '${ans[0]} Is Winner';
        win.value = true;
      } else if ((ans[2] == ans[4] && ans[4] == ans[6]) ||
          (ans[2] == ans[5] && ans[5] == ans[8]) && ans[2] != '') {
        answer.value = '${ans[2]} Is Winner';
        win.value = true;
      } else if (ans[1] == ans[4] && ans[4] == ans[7] && ans[1] != '') {
        answer.value = '${ans[1]} Is Winner';
        win.value = true;
      } else if (ans[3] == ans[4] && ans[4] == ans[5] && ans[3] != '') {
        answer.value = '${ans[3]} Is Winner';
        win.value = true;
      } else if (ans[6] == ans[7] && ans[7] == ans[8] && ans[6] != '') {
        answer.value = '${ans[6]} Is Winner';
        win.value = true;
      } else {}
    }
  }

  void turnController(int index) {
    if (ans[index] == '' && !win.value) {
      ans[index] = trueFalse.value ? 'X' : 'O';
      trueFalse.value = !trueFalse.value;
      winner();
    }
  }

  clearData() {
    ans.value = ['', '', '', '', '', '', '', '', ''];
    answer.value = '';
    trueFalse.value = false;
    n.value = 0;
    win.value = false;
    ans.refresh();
  }
}

class GameProviderController extends ChangeNotifier {
  String answer = '';
  bool trueFalse = false, win = false;
  int n = 0;

  List<String> ans = <String>['', '', '', '', '', '', '', '', ''];

  winner() {
    n++;
    if (n >= 5) {
      if ((ans[0] == ans[1] && ans[1] == ans[2]) ||
          (ans[0] == ans[3] && ans[3] == ans[6]) ||
          (ans[0] == ans[4] && ans[4] == ans[8]) && ans[0] != '') {
        answer = '${ans[0]} Is Winner';
        win = true;
      } else if ((ans[2] == ans[4] && ans[4] == ans[6]) ||
          (ans[2] == ans[5] && ans[5] == ans[8]) && ans[2] != '') {
        answer = '${ans[2]} Is Winner';
        win = true;
      } else if (ans[1] == ans[4] && ans[4] == ans[7] && ans[1] != '') {
        answer = '${ans[1]} Is Winner';
        win = true;
      } else if (ans[3] == ans[4] && ans[4] == ans[5] && ans[3] != '') {
        answer = '${ans[3]} Is Winner';
        win = true;
      } else if (ans[6] == ans[7] && ans[7] == ans[8] && ans[6] != '') {
        answer = '${ans[6]} Is Winner';
        win = true;
      } else {}
    }
    notifyListeners();
  }

  void turnController(int index) {
    if (ans[index] == '' && !win) {
      ans[index] = trueFalse ? 'X' : 'O';
      trueFalse = !trueFalse;
      winner();
    }
    notifyListeners();
  }

  clearData() {
    ans = ['', '', '', '', '', '', '', '', ''];
    answer = '';
    trueFalse = false;
    n = 0;
    win = false;
    notifyListeners();
  }
}

class PatternsController extends GetxController {
  TextEditingController txtPatternController = TextEditingController();
  RxString patternResult = ''.obs;
  RxInt no = 5.obs;

  pattern1(int number) {
    patternResult.value = '';
    for (int i = 1; i <= number; i++) {
      for (int j = 1; j <= i; j++) {
        patternResult.value = patternResult.value + j.toString();
      }
      patternResult.value += '\n';
    }
  }

  pattern2(int number) {
    patternResult.value = '';
    for (int i = number; i >= 1; i--) {
      for (int j = 1; j <= i; j++) {
        patternResult.value = patternResult.value + j.toString();
      }
      patternResult.value += '\n';
    }
  }

  pattern3(int number) {
    patternResult.value = '';
    for (int i = number; i >= 1; i--) {
      for (int j = number; j >= i; j--) {
        patternResult.value = patternResult.value + j.toString();
      }
      patternResult.value += '\n';
    }
  }

  pattern4(int number) {
    patternResult.value = '';
    for (int i = 1; i <= number; i++) {
      for (int j = i; j >= 1; j--) {
        patternResult.value = patternResult.value + j.toString();
      }
      patternResult.value += '\n';
    }
  }

  pattern5(int number) {
    patternResult.value = '';
    for (int i = 1; i <= number; i++) {
      for (int j = number; j >= i; j--) {
        patternResult.value = patternResult.value + j.toString();
      }
      patternResult.value += '\n';
    }
  }

  pattern6(int number) {
    patternResult.value = '';
    for (int i = number; i >= 1; i--) {
      for (int j = i; j >= 1; j--) {
        patternResult.value = patternResult.value + j.toString();
      }
      patternResult.value += '\n';
    }
  }

  pattern7(int number) {
    patternResult.value = '';
    for (int i = 1; i <= number; i++) {
      for (int j = i; j <= number; j++) {
        patternResult.value = patternResult.value + j.toString();
      }
      patternResult.value += '\n';
    }
  }

  pattern8(int number) {
    patternResult.value = '';
    for (int i = 45; i <= number; i++) {
      for (int j = 45; j <= i; j++) {
        patternResult.value = patternResult.value + j.toString();
      }
      patternResult.value += '\n';
    }
  }

  pattern9(int number) {
    patternResult.value = '';
    for (int i = 1; i <= number; i++) {
      for (int j = 1; j <= i; j++) {
        patternResult.value = patternResult.value + i.toString();
      }
      patternResult.value += '\n';
    }
  }

  pattern10(int number) {
    patternResult.value = '';
    for (int i = number; i >= 1; i--) {
      for (int j = number; j >= i; j--) {
        patternResult.value = patternResult.value + i.toString();
      }
      patternResult.value += '\n';
    }
  }

  pattern11(int number) {
    patternResult.value = '';
    for (int i = 1; i <= number; i++) {
      patternResult.value += '  ' * (number - i);
      for (int j = 1; j <= i; j++) {
        patternResult.value += j.toString();
      }
      patternResult.value += '\n';
    }
  }

  pattern12(int number) {
    patternResult.value = '';
    for (int i = number; i >= 1; i--) {
      patternResult.value += '  ' * (no.value - i);
      for (int j = 1; j <= i; j++) {
        patternResult.value = patternResult.value + j.toString();
      }
      patternResult.value += '\n';
    }
  }

  pattern13(int number) {
    patternResult.value = '';
    for (int i = 1; i <= number; i++) {
      patternResult.value += '  ' * i;
      for (int j = i; j <= number; j++) {
        patternResult.value = patternResult.value + j.toString();
      }
      patternResult.value += '\n';
    }
  }

  pattern14(int number) {
    patternResult.value = '';
    for (int i = number; i >= 1; i--) {
      patternResult.value += '  ' * (i);
      for (int j = i; j <= number; j++) {
        patternResult.value = patternResult.value + j.toString();
      }
      patternResult.value += '\n';
    }
  }

  pattern15(int number) {
    patternResult.value = '';
    for (int i = 1; i <= number; i++) {
      patternResult.value += '  ' * (no.value - i);
      for (int j = i; j >= 1; j--) {
        patternResult.value = patternResult.value + j.toString();
      }
      patternResult.value += '\n';
    }
  }

  pattern16(int number) {
    patternResult.value = '';
    for (int i = 1; i <= number; i++) {
      for (int j = i; j >= 1; j--) {
        patternResult.value = patternResult.value + j.toString();
      }
      patternResult.value += '\n';
    }
    for (int i = 4; i >= 1; i--) {
      for (int j = i; j >= 1; j--) {
        patternResult.value = patternResult.value + j.toString();
      }
      patternResult.value += '\n';
    }
  }

  pattern17(int number) {
    patternResult.value = '';
    for (int i = 1; i <= number; i++) {
      patternResult.value += '  ' * (no.value - i);
      for (int j = 1; j <= i; j++) {
        patternResult.value = patternResult.value + j.toString();
      }
      patternResult.value += '\n';
    }
    for (int i = 2; i <= number; i++) {
      patternResult.value += '  ' * (i - 1);
      for (int j = i; j <= number; j++) {
        patternResult.value = patternResult.value + j.toString();
      }
      patternResult.value += '\n';
    }
  }

  pattern18(int number) {
    patternResult.value = '';
    for (int i = 1; i <= number; i++) {
      for (int j = 1; j <= i; j++) {
        patternResult.value = patternResult.value + j.toString();
      }
      patternResult.value += '    ' * (no.value - i);
      for (int j = i; j >= 1; j--) {
        patternResult.value = patternResult.value + j.toString();
      }
      patternResult.value += '\n';
    }
  }

  pattern19(int number) {
    patternResult.value = '';
    for (int i = number; i >= 1; i--) {
      for (int j = 1; j <= i; j++) {
        patternResult.value = patternResult.value + j.toString();
      }
      patternResult.value += '    ' * (no.value - i);
      for (int j = i; j >= 1; j--) {
        patternResult.value = patternResult.value + j.toString();
      }
      patternResult.value += '\n';
    }
    for (int i = 1; i <= 4; i++) {
      for (int j = 1; j <= i + 1; j++) {
        patternResult.value = patternResult.value + j.toString();
      }
      patternResult.value += '    ' * (4 - i);
      for (int j = i + 1; j >= 1; j--) {
        patternResult.value = patternResult.value + j.toString();
      }
      patternResult.value += '\n';
    }
  }

  pattern20(int number) {
    patternResult.value = '';
    for (int i = number; i >= 1; i--) {
      patternResult.value += ' ' * (i);
      for (int j = number; j >= i; j--) {
        if (j == 5) {
          patternResult.value += '*';
        }
      }
      patternResult.value += '  ' * (no.value - i);

      for (int j = i + 1; j <= number; j++) {
        if (j == 5) {
          patternResult.value += '*';
        }
      }
      patternResult.value += '\n';
    }
  }

  pattern21(int number) {
    patternResult.value = '';
    int k = 1;
    for (int i = 1; i <= number; i++) {
      for (int j = 1; j <= i; j++) {
        patternResult.value += k.toString();
        k++;
      }
      patternResult.value += '\n';
    }
  }

  pattern22(int number) {
    patternResult.value = '';
    for (int i = 65; i <= 69; i++) {
      for (int j = 65; j <= i; j++) {
        patternResult.value += String.fromCharCode(i);
      }
      patternResult.value += '\n';
    }
  }

  pattern23(int number) {
    patternResult.value = '';
    for (int i = 1; i <= number; i++) {
      for (int j = 1; j <= i; j++) {
        if (j % 2 == 0) {
          patternResult.value += '0';
        } else {
          patternResult.value += '1';
        }
      }
      patternResult.value += '\n';
    }
  }

  pattern24(int number) {
    patternResult.value = '';
    for (int i = number; i >= 1; i--) {
      patternResult.value += '  ' * (i);
      for (int j = number; j >= i; j--) {
        patternResult.value = patternResult.value + j.toString();
      }
      for (int j = i + 1; j <= number; j++) {
        patternResult.value = patternResult.value + j.toString();
      }
      patternResult.value += '\n';
    }
  }
}
