import 'package:this_calculator/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomeApp());
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          //elevation: 0.0,
          title: Text(
            "this_Calculator",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Calculator(),
      ),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  List<String> output = [];
  String result = "2314";

  void show(String value) {
    setState(() {
      output.add(value);
    });
  }

  List<Widget> numButton() => [
        Container(
          decoration: BoxDecoration(shape: BoxShape.circle),
          child: TextButton(
            onPressed: () {
              show("7");
            },
            child: NumPad("7"),
          ),
        ),
        TextButton(
          onPressed: () {
            show("8");
          },
          child: NumPad("8"),
        ),
        TextButton(
          onPressed: () {
            show("9");
          },
          child: NumPad("9"),
        ),
        TextButton(
          onPressed: () {
            show("4");
          },
          child: NumPad("4"),
        ),
        TextButton(
          onPressed: () {
            show("5");
          },
          child: NumPad("5"),
        ),
        TextButton(
          onPressed: () {
            show("6");
          },
          child: NumPad("6"),
        ),
        TextButton(
          onPressed: () {
            show("1");
          },
          child: NumPad("1"),
        ),
        TextButton(
          onPressed: () {
            show("2");
          },
          child: NumPad("2"),
        ),
        TextButton(
          onPressed: () {
            show("3");
          },
          child: NumPad("3"),
        ),
        TextButton(
          onPressed: () {
            show(".");
          },
          child: NumPad("."),
        ),
        TextButton(
          onPressed: () {
            show("0");
          },
          child: NumPad("0"),
        ),
        TextButton(
          onPressed: () {
            show("=");
          },
          child: NumPad("="),
        ),
      ];

  List<Widget> opButton() => [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () => setState(
                () {
                  output.removeLast();
                  print(output.toString());
                },
              ),
              onLongPress: () => setState(
                () => output.clear(),
              ),
              child: Operator(
                fontSize: 16,
                opValue: "DEL",
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () => setState(
                () {
                  show("/");
                },
              ),
              child: Operator(
                fontSize: 20,
                opValue: "/",
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () => setState(
                () {
                  show("x");
                },
              ),
              child: Operator(
                fontSize: 20,
                opValue: "x",
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () => setState(
                () {
                  show("-");
                },
              ),
              child: Operator(
                fontSize: 38,
                opValue: "-",
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(bottom: 25),
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () => setState(
                () {
                  show("+");
                },
              ),
              child: Operator(
                fontSize: 20,
                opValue: "+",
              ),
            ),
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Container(
              //height: 90,
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                child: Text(
                  output.join(),
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.w300,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              //height: 70,
              padding: EdgeInsets.only(right: 10, bottom: 14),
              child: Text(
                result,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  width: 270,
                  height: 352,
                  //color: Colors.blueGrey[900],
                  child: GridView.count(
                    crossAxisCount: 3,
                    children: numButton(),
                  ),
                ),
                Container(
                  color: Colors.black54,
                  width: 65,
                  height: 352,
                  child: Column(
                    children: opButton(),
                  ),
                ),
                Container(
                  color: Colors.greenAccent,
                  width: 25,
                  height: 352,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
