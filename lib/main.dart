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
  final button = <Button>[];

  List<String> output = [];
  String result = "";

  void press(String value) {
    setState(() {
      output.add(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    // add buttons appropraitely to the list of buttons
    for (int i = 9; i >= -2; i--) {
      if (i == 0) {
        button.add(
          Button(
            textValue: ".",
            color: Colors.black54,
            fontSize: 26,
            padding: EdgeInsets.only(bottom: 10),
          ),
        );
      } else if (i == -1) {
        button.add(
          Button(
            textValue: "0",
            color: Colors.black54,
            fontSize: 26,
            padding: EdgeInsets.only(bottom: 10),
          ),
        );
      } else if (i == -2) {
        button.add(
          Button(
            textValue: "=",
            color: Colors.black54,
            fontSize: 26,
            padding: EdgeInsets.only(bottom: 10),
          ),
        );
      } else {
        button.add(
          Button(
            textValue: i.toString(),
            color: Colors.black54,
            fontSize: 26,
            padding: EdgeInsets.only(bottom: 10),
          ),
        );
      }
    }

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
                // 1 to 9
                Container(
                  width: 270,
                  height: 352,
                  color: Colors.black54,
                  child: GridView.builder(
                    shrinkWrap: true,
                    primary: false,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemCount: button.length,
                    itemBuilder: (BuildContext context, int index) =>
                        TextButton(
                            onPressed: () {
                              press(button[index].textValue);
                            },
                            child: button[index]),
                  ),
                ),
                Container(
                  color: Colors.black54,
                  width: 65,
                  height: 352,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                            padding: const EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  output.removeLast();
                                  print(output.toString());
                                });
                              },
                              onLongPress: () {
                                setState(() {
                                  output.clear();
                                });
                              },
                              child: const Text(
                                "DEL",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )),
                      ),
                      Expanded(
                        child: Container(
                            padding: const EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: TextButton(
                              onPressed: () {
                                press("/");
                              },
                              child: const Text(
                                "/",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            )),
                      ),
                      Expanded(
                        child: Container(
                            padding: const EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: TextButton(
                              onPressed: () {
                                press("x");
                              },
                              child: const Text(
                                "x",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            )),
                      ),
                      Expanded(
                        child: Container(
                            padding: const EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: TextButton(
                              onPressed: () {
                                press("-");
                              },
                              child: const Text(
                                "-",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 38,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            )),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 25),
                          alignment: Alignment.center,
                          child: TextButton(
                            onPressed: () {
                              press("+");
                            },
                            child: const Text(
                              "+",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
