import 'package:flutter/material.dart';

ValueNotifier<int> notifier = ValueNotifier<int>(0);

class ValueNotifierWidget extends StatelessWidget {
  ValueNotifierWidget({super.key});

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
          children:[
            Spacer(),
            Text(
              'Counter Value:',
              style: TextStyle(fontSize: 20),
            ),
            ValueListenableBuilder(
              valueListenable: notifier,
              builder: (context, value, child) {
                return Text(
                  '$value',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                );
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text(
                    'Increment',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _decrementCounter,
                  child: Text(
                    'Decrement',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _resetCounter,
                  child: Text(
                    'Reset',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ],
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        SecondValueNotifierScreen(),
                  ),
                );
              },
              child: Text(
                'Go To Second Screen',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  //logic
  void _incrementCounter() {
    print('_incrementCounter');
    notifier.value++;
  }

  void _decrementCounter() {
    print('_decrementCounter');
    notifier.value--;
  }

  void _resetCounter() {
    print('_resetCounter');
    notifier.value = 0;
  }
}

class SecondValueNotifierScreen extends StatelessWidget {
  const SecondValueNotifierScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('${notifier.value}',
            style: TextStyle(fontSize: 40)),
      ),
    );
  }
}
