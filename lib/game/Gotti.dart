import 'GottiColor.dart';
import 'package:flutter/material.dart';

class Gotti {
  int _start, _end, gottiIndex;
  static int HOMEPOSITION = -1;
  static int GAMEPOSITION = 500;
  String _color;
  Color materialColor;
  int currentPosition;

  Gotti(String color, int gottiIndex) {
    this._color = color;
    currentPosition = HOMEPOSITION;
    if (color == GottiColor.RED) {
      materialColor = Colors.red;
      _start = 1;
      _end = 51;
    } else if (color == GottiColor.GREEN) {
      materialColor = Colors.green;
      _start = 14;
      _end = 12;
    } else if (color == GottiColor.YELLOW) {
      materialColor = Colors.orange;
      _start = 27;
      _end = 25;
    } else if (color == GottiColor.BLUE) {
      materialColor = Colors.blue;
      _start = 40;
      _end = 38;
    }
    this.gottiIndex = gottiIndex;
  }

  bool canMove(int steps) {
    return true; //pachi agadi 3 4 steps chalna milcha mildaina evalualte garcha yelle
  }

  canGottiMove(int steps) {
    //home tira lagyo bhane k garne bhane pachi decide garaula
    if (currentPosition == HOMEPOSITION && steps == 1)
      return true;
    else if (currentPosition == GAMEPOSITION)
      return false;
    else if (currentPosition == HOMEPOSITION && steps != 1) return false;
    return true;
  }

  int moveGotti(int steps) {
    int lastPosition;
    for (int i = 0; i < steps; i++) {
      lastPosition = _moveGottiOnce(steps);
    }
    return lastPosition;
  }

  int _moveGottiOnce(int totalSteps) {
    int limit = (_end % 51) + 51;
    if (currentPosition == HOMEPOSITION) {
      if (totalSteps == 1) {
        currentPosition = _start;
        print("Ma niskiye");
      } else
        print("Bhitra bhako gotti niskina mildaina");
    } else if (currentPosition == GAMEPOSITION) {
      print("MA aaisake bhitra, aru kta haru ni aao hai");
    } else if (currentPosition + 1 <= limit) {
      print("eak agadi badhe");
      return currentPosition++;
    } else if (currentPosition == _end) {
      print("I am stuck, no logic to get in");
    }
    return currentPosition;
  }

  bool bringGottiOutOfHome() {
    if (currentPosition != HOMEPOSITION)
      return false;
    else {
      currentPosition = _start;
      return true;
    }
  }

  bool killGotti() {
    if (currentPosition != 0) {
      currentPosition = 0;
      return true;
    }
    return false;
  }
}
