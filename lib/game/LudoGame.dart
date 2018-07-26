import 'Gotti.dart';
import 'GottiColor.dart';
import 'dart:math';

class LudoGame {
  int currentTurn = 0, currentRoll = -1;
  bool pendingMove = false, alreadyRolled = false;

  Random random = Random();
  List<String> turns = [
    GottiColor.YELLOW,
    GottiColor.BLUE,
    GottiColor.RED,
    GottiColor.GREEN
  ];

  List<Gotti> reds = [
    Gotti(GottiColor.RED, 0),
    Gotti(GottiColor.RED, 1),
    Gotti(GottiColor.RED, 2),
    Gotti(GottiColor.RED, 3)
  ];

  List<Gotti> greens = [
    Gotti(GottiColor.GREEN, 0),
    Gotti(GottiColor.GREEN, 1),
    Gotti(GottiColor.GREEN, 2),
    Gotti(GottiColor.GREEN, 3)
  ];

  List<Gotti> yellows = [
    Gotti(GottiColor.YELLOW, 0),
    Gotti(GottiColor.YELLOW, 1),
    Gotti(GottiColor.YELLOW, 2),
    Gotti(GottiColor.YELLOW, 3)
  ];

  List<Gotti> blues = [
    Gotti(GottiColor.BLUE, 0),
    Gotti(GottiColor.BLUE, 1),
    Gotti(GottiColor.BLUE, 2),
    Gotti(GottiColor.BLUE, 3)
  ];

  changeTurn() {
    currentTurn = (currentTurn + 1) % 4;
    pendingMove = false;
    alreadyRolled = false;
  }

  String getCurrentTurn() {
    return turns.elementAt(currentTurn);
  }

  int getCurrentRoll() {
    return currentRoll;
  }

  rollDice() {
    pendingMove = false;
    alreadyRolled = true;
    currentRoll = random.nextInt(5) + 1;
    return whichGottisCanMove();

  }

  whichGottisCanMove() {
    List<int> gottiesThatCanMove = List();
    if (getCurrentTurn() == GottiColor.RED) {
      for (var gotti in reds) {
        if (gotti.canGottiMove(currentRoll))
          gottiesThatCanMove.add(gotti.gottiIndex);
      }
    } else if (getCurrentTurn() == GottiColor.GREEN) {
      for (var gotti in greens) {
        if (gotti.canGottiMove(currentRoll))
          gottiesThatCanMove.add(gotti.gottiIndex);
      }
    } else if (getCurrentTurn() == GottiColor.YELLOW) {
      for (var gotti in yellows) {
        if (gotti.canGottiMove(currentRoll))
          gottiesThatCanMove.add(gotti.gottiIndex);
      }
    } else if (getCurrentTurn() == GottiColor.BLUE) {
      for (var gotti in blues) {
        if (gotti.canGottiMove(currentRoll))
          gottiesThatCanMove.add(gotti.gottiIndex);
      }
    }
    return whichGottisCanMove();
  
  }

  moveGotti(int gottiIndex) {
    int destinationPosition;
    if (getCurrentTurn() == GottiColor.RED) {
      destinationPosition = reds.elementAt(gottiIndex).moveGotti(currentRoll);
    } else if (getCurrentTurn() == GottiColor.GREEN) {
      destinationPosition = greens.elementAt(gottiIndex).moveGotti(currentRoll);
    } else if (getCurrentTurn() == GottiColor.YELLOW) {
      destinationPosition =
          yellows.elementAt(gottiIndex).moveGotti(currentRoll);
    } else if (getCurrentTurn() == GottiColor.BLUE) {
      destinationPosition = blues.elementAt(gottiIndex).moveGotti(currentRoll);
    }
    changeTurn();
    return destinationPosition;
  }

  List<int> numberOfGottiesThatCanMove(int steps) {
    List<int> movableGotties = List();
    if (getCurrentTurn() == GottiColor.RED) {
      reds.forEach((Gotti gotti) {
        if (gotti.canMove(steps)) movableGotties.add(gotti.gottiIndex);
      });
    } else if (getCurrentTurn() == GottiColor.GREEN) {
      greens.forEach((Gotti gotti) {
        if (gotti.canMove(steps)) movableGotties.add(gotti.gottiIndex);
      });
    } else if (getCurrentTurn() == GottiColor.YELLOW) {
      yellows.forEach((Gotti gotti) {
        if (gotti.canMove(steps)) movableGotties.add(gotti.gottiIndex);
      });
    } else if (getCurrentTurn() == GottiColor.BLUE) {
      blues.forEach((Gotti gotti) {
        if (gotti.canMove(steps)) movableGotties.add(gotti.gottiIndex);
      });
    }

    return movableGotties;
  }
}
