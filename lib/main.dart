import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              //elevation: 0.0,
              title: Text(
                  "this_Calculator",
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
                        child: Text(
                          "5+12",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.w300,
                            color: Colors.black54,
                        )
                      ),
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
                        )
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            color: Colors.black54,
                            width: 270,
                            height: 352,
                              child: GridView.count(
                                  primary: false,
                                  crossAxisSpacing: .2,
                                  mainAxisSpacing: .2,
                                  crossAxisCount: 3,
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      alignment: Alignment.center,
                                      color: Colors.black54,
                                      child: const Text(
                                        "9",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 26,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        padding: const EdgeInsets.all(5),
                                        alignment: Alignment.center,
                                        color: Colors.black54,
                                        child: const Text(
                                          "8",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 26,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        )
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      alignment: Alignment.center,
                                      color: Colors.black54,
                                      child: const Text(
                                        "7",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 26,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      alignment: Alignment.center,
                                      color: Colors.black54,
                                      child: const Text(
                                        "6",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 26,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      alignment: Alignment.center,
                                      color: Colors.black54,
                                      child: const Text(
                                        "5",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 26,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),),
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      alignment: Alignment.center,
                                      color: Colors.black54,
                                      child: const Text(
                                        "4",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 26,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    Container( padding: const EdgeInsets.all(5),
                                      alignment: Alignment.center,
                                      color: Colors.black54,
                                      child: const Text(
                                        "3",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 26,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    Container( padding: const EdgeInsets.all(5),
                                      alignment: Alignment.center,
                                      color: Colors.black54,
                                      child: const Text(
                                        "2",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 26,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    Container( padding: const EdgeInsets.all(5),
                                      alignment: Alignment.center,
                                      color: Colors.black54,
                                      child: const Text(
                                        "1",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 26,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        padding: const EdgeInsets.only(bottom: 10),
                                        alignment: Alignment.center,
                                        color: Colors.black54,
                                        child: const Text(
                                          ".",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 26,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        )
                                    ),
                                    Container(
                                        padding: const EdgeInsets.only(bottom: 10),
                                        alignment: Alignment.center,
                                        color: Colors.black54,
                                        child: const Text(
                                          "0",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 26,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        )
                                    ),
                                    Container(
                                        padding: const EdgeInsets.only(bottom: 10),
                                        alignment: Alignment.center,
                                        color: Colors.black54,
                                        child: const Text(
                                          "=",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 26,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        )
                                    ),

                                  ]
                              )
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
                                      )
                                  ),
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
                                      )
                                  ),
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
                                      )
                                  ),
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
                                      )
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                      padding: const EdgeInsets.only(bottom:25),
                                      alignment: Alignment.center,
                                      child: const Text(
                                        "+",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            )
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
                )
            )
        )
    );
  }
}
