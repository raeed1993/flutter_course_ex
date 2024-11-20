import 'package:flutter/material.dart';


class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int value = 0;

  void _incrementCounter() {
    setState(() {
      value++;
    });
  }

  void _decrementCounter() {
    setState(() {
    value--;
    });
  }

  void _resetCounter() {
    setState(() {
      value = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
print('builder');
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              'Counter Value:',
              style: TextStyle(fontSize: 20),
            ),
            Spacer(),
            Text(
              '$value',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text('Increment',style: TextStyle(fontSize: 22),),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _decrementCounter,
                  child: Text('Decrement',style: TextStyle(fontSize: 22),),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _resetCounter,
                  child: Text('Reset',style: TextStyle(fontSize: 22),),
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
