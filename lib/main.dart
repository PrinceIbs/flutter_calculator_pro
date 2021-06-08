import 'package:this_calculator/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final button = <Button>[];

    for (int i = 12; i >= 1; i--) {
      if (i == 12) {
        button.add(
          Button(
            textValue: "=",
            color: Colors.black54,
            fontSize: 26,
            padding: EdgeInsets.only(bottom: 10),
          ),
        );
      } else if (i == 11) {
        button.add(
          Button(
            textValue: "0",
            color: Colors.black54,
            fontSize: 26,
            padding: EdgeInsets.only(bottom: 10),
          ),
        );
      } else if (i == 10) {
        button.add(
          Button(
            textValue: ".",
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
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              //elevation: 0.0,
              title: Text("this_Calculator",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Colors.black,
                  )),
              centerTitle: true,
              backgroundColor: Colors.transparent,
            ),
            body: SafeArea(
                child: Column(
              children: [
                Container(
                  height: 90,
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 10),
                  child: Text("5+12",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.w300,
                        color: Colors.black54,
                      )),
                ),
                Container(
                    alignment: Alignment.centerRight,
                    height: 70,
                    padding: EdgeInsets.only(right: 10, bottom: 14),
                    child: Text(
                      "17",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w200,
                      ),
                    )),
                Container(
                  child: Row(
                    children: [
                      Container(
                        color: Colors.black54,
                        width: 270,
                        height: 352,
                        // child: GridView.count(
                        //   primary: false,
                        //   crossAxisSpacing: .2,
                        //   mainAxisSpacing: .2,
                        //   crossAxisCount: 3,
                        //   children: <Widget>[
                        //     Button(
                        //       padding: EdgeInsets.only(bottom: 10),
                        //       color: Colors.black54,
                        //       textValue: "9",
                        //       fontSize: 26,
                        //     ),
                        //     Button(
                        //       padding: EdgeInsets.only(bottom: 10),
                        //       color: Colors.black54,
                        //       textValue: "8",
                        //       fontSize: 26,
                        //     ),
                        //     Button(
                        //       padding: EdgeInsets.only(bottom: 10),
                        //       color: Colors.black54,
                        //       textValue: "7",
                        //       fontSize: 26,
                        //     ),
                        //     Button(
                        //       padding: EdgeInsets.only(bottom: 10),
                        //       color: Colors.black54,
                        //       textValue: "6",
                        //       fontSize: 26,
                        //     ),
                        //     Button(
                        //       padding: EdgeInsets.only(bottom: 10),
                        //       color: Colors.black54,
                        //       textValue: "5",
                        //       fontSize: 26,
                        //     ),
                        //     Button(
                        //       padding: EdgeInsets.only(bottom: 10),
                        //       color: Colors.black54,
                        //       textValue: "4",
                        //       fontSize: 26,
                        //     ),
                        //     Button(
                        //       padding: EdgeInsets.only(bottom: 10),
                        //       color: Colors.black54,
                        //       textValue: "3",
                        //       fontSize: 26,
                        //     ),
                        //     Button(
                        //       padding: EdgeInsets.only(bottom: 10),
                        //       color: Colors.black54,
                        //       textValue: "2",
                        //       fontSize: 26,
                        //     ),
                        //     Button(
                        //       padding: EdgeInsets.only(bottom: 10),
                        //       color: Colors.black54,
                        //       textValue: "1",
                        //       fontSize: 26,
                        //     ),
                        //     Button(
                        //       padding: EdgeInsets.only(bottom: 10),
                        //       color: Colors.black54,
                        //       textValue: ".",
                        //       fontSize: 26,
                        //     ),
                        //     Button(
                        //       padding: EdgeInsets.only(bottom: 10),
                        //       color: Colors.black54,
                        //       textValue: "0",
                        //       fontSize: 26,
                        //     ),
                        //     Button(
                        //       padding: EdgeInsets.only(bottom: 10),
                        //       color: Colors.black54,
                        //       textValue: "=",
                        //       fontSize: 26,
                        //     ),
                        //     // GridView.builder(
                        //     //   gridDelegate:
                        //     //       const SliverGridDelegateWithFixedCrossAxisCount(
                        //     //     crossAxisCount: 3,
                        //     //   ),
                        //     //   itemCount: button.length,
                        //     //   itemBuilder: (BuildContext context, int index) =>
                        //     //       button[index],
                        //     // ),
                        //   ],
                        // ),
                        child: GridView.builder(
                          primary: false,
                          // crossAxisSpacing: .2,
                          // mainAxisSpacing: .2,
                          // crossAxisCount: 3,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          ),
                          itemCount: button.length,
                          itemBuilder: (BuildContext context, int index) =>
                              button[index],
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
                                    child: const Text(
                                      "DEL",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    )),
                              ),
                              Expanded(
                                child: Container(
                                    padding: const EdgeInsets.all(10),
                                    alignment: Alignment.center,
                                    child: const Text(
                                      "/",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    )),
                              ),
                              Expanded(
                                child: Container(
                                    padding: const EdgeInsets.all(10),
                                    alignment: Alignment.center,
                                    child: const Text(
                                      "x",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    )),
                              ),
                              Expanded(
                                child: Container(
                                    padding: const EdgeInsets.all(10),
                                    alignment: Alignment.center,
                                    child: const Text(
                                      "-",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 38,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    )),
                              ),
                              Expanded(
                                child: Container(
                                    padding: const EdgeInsets.only(bottom: 25),
                                    alignment: Alignment.center,
                                    child: const Text(
                                      "+",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    )),
                              ),
                            ],
                          )),
                      Container(
                        color: Colors.greenAccent,
                        width: 25,
                        height: 352,
                      ),
                    ],
                  ),
                ),
              ],
            ))));
  }
}
