import 'package:flutter/material.dart';
import '../game/Gotti.dart';
import '../game/PositionOnScreen.dart';

class GottiWidget extends StatelessWidget {
  final double width;
  final Gotti gotti;
  final PositionOnScreen pOnScreen = PositionOnScreen();

  GottiWidget({this.gotti, this.width});

  Position getPositionAt(int position) {
    if (!pOnScreen.initilized) pOnScreen.initilizePositions(width);
    return pOnScreen.positionOnScreen[position];
  }

  getTopPosition() {
    if (gotti.currentPosition == Gotti.HOMEPOSITION) {
    } else {
      return getPositionAt(gotti.currentPosition).top;
    }
  }

  getLeftPosition() {
    if (gotti.currentPosition == Gotti.HOMEPOSITION) {
    } else {
      return getPositionAt(gotti.currentPosition).left;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: getTopPosition(),
      left: getLeftPosition(),
      child: Container(
        width: width / 18,
        height: width / 18,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: gotti.materialColor,
        ),
      ),
    );
  }
}
