import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: CalculatorPage(),
    );
  }
}

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  double result = 0.0;

  String userInput = '';

  TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: inputController,
              readOnly: true,
              showCursor: false,
              textAlign: TextAlign.right,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "$result",
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.red,
                  onPressed: () {
                    userInput = "";
                    inputController.text = "";
                    // inputController.text = userInput;
                  },
                  child: Text(
                    'AC',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.red,
                  onPressed: () {
                    userInput = userInput.substring(0, userInput.length - 1);
                    inputController.text = userInput;
                  },
                  child: Text(
                    '⌫',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.red,
                  onPressed: () {
                    userInput = '%';
                    inputController.text = userInput;
                  },
                  child: Text(
                    '%',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.red,
                  onPressed: () {
                    userInput += "/";
                    inputController.text = userInput;
                  },
                  child: Text(
                    '/',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    userInput += '7';
                    inputController.text = userInput;
                  },
                  child: Text(
                    '7',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    userInput += '8';
                    inputController.text = userInput;
                  },
                  child: Text(
                    '8',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    userInput += '9';
                    inputController.text = userInput;
                  },
                  child: Text(
                    '9',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.red,
                  onPressed: () {
                    userInput += "*";
                    inputController.text = userInput;
                  },
                  child: Text(
                    'X',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    userInput += '4';
                    inputController.text = userInput;
                  },
                  child: Text(
                    '4',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    userInput += '5';
                    inputController.text = userInput;
                  },
                  child: Text(
                    '5',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    userInput += '6';
                    inputController.text = userInput;
                  },
                  child: Text(
                    '6',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.red,
                  onPressed: () {
                    userInput += "-";
                    inputController.text = userInput;
                  },
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    userInput += '1';
                    inputController.text = userInput;
                  },
                  child: Text(
                    '1',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    userInput += '2';
                    inputController.text = userInput;
                  },
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    userInput += '3';
                    inputController.text = userInput;
                  },
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.red,
                  onPressed: () {
                    userInput += "+";
                    inputController.text = userInput;
                  },
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    userInput += "00";
                    inputController.text = userInput;
                  },
                  child: Text(
                    '00',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    userInput += '0';
                    inputController.text = userInput;
                  },
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    userInput = '.';
                    inputController.text = userInput;
                  },
                  child: Text(
                    '.',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.red,
                  onPressed: () {
                    calculate();
                  },
                  child: Text(
                    '=',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void calculate() {
    Parser p = Parser();
    Expression exp = p.parse(userInput);
    ContextModel cm = ContextModel();

    double eval = exp.evaluate(EvaluationType.REAL, cm);
    print(eval);

    setState(() {
      result = eval;
    });
  }
}
