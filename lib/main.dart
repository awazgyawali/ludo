import 'package:flutter/material.dart';
import './game/LudoGame.dart';
import './game/PositionOnScreen.dart';
import './widgets/GottiWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nepali Ludo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Nepali Ludo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  LudoGame ludoGame = LudoGame();
  PositionOnScreen pOnScreen = PositionOnScreen();

  Position getPositionAt(int position, double boardWidth) {
    if (!pOnScreen.initilized) pOnScreen.initilizePositions(boardWidth);
    return pOnScreen.positionOnScreen[position];
  }

  moveGotti(int index) {
    setState(() {
      if (ludoGame.alreadyRolled) ludoGame.moveGotti(0);
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image(
                image: AssetImage("ludo_board.png"),
              ),
              GottiWidget(
                gotti: ludoGame.blues[0],
                width: width,
              ),
              GottiWidget(
                gotti: ludoGame.blues[1],
                width: width,
              ),
              GottiWidget(
                gotti: ludoGame.blues[2],
                width: width,
              ),
              GottiWidget(
                gotti: ludoGame.blues[3],
                width: width,
              ),
              GottiWidget(
                gotti: ludoGame.reds[0],
                width: width,
              ),
              GottiWidget(
                gotti: ludoGame.reds[1],
                width: width,
              ),
              GottiWidget(
                gotti: ludoGame.reds[2],
                width: width,
              ),
              GottiWidget(
                gotti: ludoGame.reds[3],
                width: width,
              ),
              GottiWidget(
                gotti: ludoGame.greens[0],
                width: width,
              ),
              GottiWidget(
                gotti: ludoGame.greens[1],
                width: width,
              ),
              GottiWidget(
                gotti: ludoGame.greens[2],
                width: width,
              ),
              GottiWidget(
                gotti: ludoGame.greens[3],
                width: width,
              ),
              GottiWidget(
                gotti: ludoGame.yellows[0],
                width: width,
              ),
              GottiWidget(
                gotti: ludoGame.yellows[1],
                width: width,
              ),
              GottiWidget(
                gotti: ludoGame.yellows[2],
                width: width,
              ),
              GottiWidget(
                gotti: ludoGame.yellows[3],
                width: width,
              ),
            ],
          ),
          Text("Current turn: ${ludoGame.getCurrentTurn()}"),
          Text("Current dice score is: ${ludoGame.getCurrentRoll()}"),
          RaisedButton(
            child: Text("Shuffle dice"),
            onPressed: () {
              if (!ludoGame.pendingMove)
                setState(() {
                  if (!ludoGame.alreadyRolled) {
                    if(ludoGame.rollDice().length == 0){
                      ludoGame.changeTurn();
                    }
                  }
                });
              else
                print("Paila gotti ta chal mero bhai");
            },
          ),
          RaisedButton(
              child: Text("Move gotti"), onPressed: () => moveGotti(0)),
        ],
      ),
    ));
  }
}
