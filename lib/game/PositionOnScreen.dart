import 'Gotti.dart';

class PositionOnScreen {
  Map<int, Position> positionOnScreen = Map();
  bool initilized = false;

  initilizePositions(double boardSize) {
    positionOnScreen[0] =
        Position(left: boardSize / 1.06685, top: boardSize / 1.8564);
    positionOnScreen[1] =
        Position(top: boardSize / 1.8564, left: boardSize / 1.15030);
    positionOnScreen[2] =
        Position(top: boardSize / 1.8564, left: boardSize / 1.24584);
    positionOnScreen[3] =
        Position(top: boardSize / 1.8564, left: boardSize / 1.35869);
    positionOnScreen[4] =
        Position(top: boardSize / 1.8564, left: boardSize / 1.4940);
    positionOnScreen[5] =
        Position(top: boardSize / 1.8564, left: boardSize / 1.65929);
    positionOnScreen[6] =
        Position(left: boardSize / 1.8564, top: boardSize / 1.65198);
    positionOnScreen[7] =
        Position(left: boardSize / 1.8564, top: boardSize / 1.48809);
    positionOnScreen[8] =
        Position(left: boardSize / 1.8564, top: boardSize / 1.35379);
    positionOnScreen[9] =
        Position(left: boardSize / 1.8564, top: boardSize / 1.24172);
    positionOnScreen[10] =
        Position(left: boardSize / 1.8564, top: boardSize / 1.146788);
    positionOnScreen[11] =
        Position(left: boardSize / 1.8564, top: boardSize / 1.06534);
    positionOnScreen[12] =
        Position(left: boardSize / 2.1186, top: boardSize / 1.06534);
    positionOnScreen[13] =
        Position(left: boardSize / 2.45098, top: boardSize / 1.06534);
    positionOnScreen[14] =
        Position(left: boardSize / 2.45098, top: boardSize / 1.146788);
    positionOnScreen[15] =
        Position(left: boardSize / 2.45098, top: boardSize / 1.24172);
    positionOnScreen[16] =
        Position(left: boardSize / 2.45098, top: boardSize / 1.35379);
    positionOnScreen[17] =
        Position(left: boardSize / 2.45098, top: boardSize / 1.48809);
    positionOnScreen[18] =
        Position(left: boardSize / 2.45098, top: boardSize / 1.65198);
    positionOnScreen[19] =
        Position(top: boardSize / 1.8564, left: boardSize / 2.9296);
    positionOnScreen[20] =
        Position(top: boardSize / 1.8564, left: boardSize / 3.6407);
    positionOnScreen[21] =
        Position(top: boardSize / 1.8564, left: boardSize / 4.80769);
    positionOnScreen[22] =
        Position(top: boardSize / 1.8564, left: boardSize / 7.07547);
    positionOnScreen[23] =
        Position(top: boardSize / 1.8564, left: boardSize / 13.3928);
    positionOnScreen[24] =
        Position(top: boardSize / 1.8564, left: boardSize / 125);
    positionOnScreen[25] =
        Position(top: boardSize / 2.1126, left: boardSize / 125);
    positionOnScreen[26] =
        Position(top: boardSize / 2.4590, left: boardSize / 125);
    positionOnScreen[27] =
        Position(top: boardSize / 2.4590, left: boardSize / 13.3928);
    positionOnScreen[28] =
        Position(top: boardSize / 2.4590, left: boardSize / 7.07547);
    positionOnScreen[29] =
        Position(top: boardSize / 2.4590, left: boardSize / 4.80769);
    positionOnScreen[30] =
        Position(top: boardSize / 2.4590, left: boardSize / 3.6407);
    positionOnScreen[31] =
        Position(top: boardSize / 2.4590, left: boardSize / 2.9296);
    positionOnScreen[32] =
        Position(top: boardSize / 2.94117, left: boardSize / 2.45098);
    positionOnScreen[33] =
        Position(top: boardSize / 3.6585, left: boardSize / 2.45098);
    positionOnScreen[34] =
        Position(top: boardSize / 4.8387, left: boardSize / 2.45098);
    positionOnScreen[35] =
        Position(top: boardSize / 7.1428, left: boardSize / 2.45098);
    positionOnScreen[36] =
        Position(top: boardSize / 13.6363, left: boardSize / 2.45098);
    positionOnScreen[37] =
        Position(top: boardSize / 125, left: boardSize / 2.45098);
    positionOnScreen[38] =
        Position(top: boardSize / 125, left: boardSize / 2.1186);
    positionOnScreen[39] =
        Position(top: boardSize / 125, left: boardSize / 1.8564);
    positionOnScreen[40] =
        Position(top: boardSize / 13.3928, left: boardSize / 1.8564);
    positionOnScreen[41] =
        Position(top: boardSize / 7.1428, left: boardSize / 1.8564);
    positionOnScreen[42] =
        Position(top: boardSize / 4.8387, left: boardSize / 1.8564);
    positionOnScreen[43] =
        Position(top: boardSize / 3.6585, left: boardSize / 1.8564);
    positionOnScreen[44] =
        Position(top: boardSize / 2.9411, left: boardSize / 1.8564);
    positionOnScreen[45] =
        Position(top: boardSize / 2.4590, left: boardSize / 1.6519);
    positionOnScreen[46] =
        Position(top: boardSize / 2.4590, left: boardSize / 1.4880);
    positionOnScreen[47] =
        Position(top: boardSize / 2.4590, left: boardSize / 1.35379);
    positionOnScreen[48] =
        Position(top: boardSize / 2.4590, left: boardSize / 1.2417);
    positionOnScreen[49] =
        Position(top: boardSize / 2.4590, left: boardSize / 1.1467);
    positionOnScreen[50] =
        Position(top: boardSize / 2.4590, left: boardSize / 1.0653);
    positionOnScreen[51] =
        Position(top: boardSize / 2.1126, left: boardSize / 1.0653);
  }

  Position getPositiononScreen(int boardPosition) {
    if (boardPosition == Gotti.HOMEPOSITION) {
      print("home ma cha position nikaleko chaina");
      return Position();
    } else if (boardPosition == Gotti.GAMEPOSITION) {
      print("game hbhitra chu, nikaleko chaina");
      return Position();
    } else
      return positionOnScreen[boardPosition];
  }
}

class Position {
  double left, right, bottom, top;

  Position({this.left, this.top, this.bottom, this.right});
}
