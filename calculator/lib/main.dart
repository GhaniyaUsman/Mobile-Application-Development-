import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        body: Center(
          child: CalculatorScreen(),
        ),
      ),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _input = '';
  double _result = 0.0;

  void _addToInput(String value) {
    setState(() {
      _input += value;
    });
  }

  void _calculate() {
    try {
      setState(() {
        _result = eval(_input);
      });
    } catch (e) {
      setState(() {
        _result = 0.0;
        _input = '';
      });
    }
  }

  void _clear() {
    setState(() {
      _input = '';
      _result = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.grey[300],
              child: Text(
                _input,
                style: TextStyle(fontSize: 24.0),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          buildButtonRow(['7', '8', '9', '/']),
          buildButtonRow(['4', '5', '6', 'x']),
          buildButtonRow(['1', '2', '3', '-']),
          buildButtonRow(['C', '0', '=', '+']),
        ],
      ),
    );
  }

  Widget buildButtonRow(List<String> buttons) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons
            .map(
              (String text) => Expanded(
                child: TextButton(
                  onPressed: () {
                    if (text == '=') {
                      _calculate();
                    } else if (text == 'C') {
                      _clear();
                    } else {
                      _addToInput(text);
                    }
                  },
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 24.0),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  double eval(String expression) {
    return double.parse(expression);
  }
}
