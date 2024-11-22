import 'package:flutter/material.dart';

ValueNotifier<int> notifier = ValueNotifier<int>(0);

class CounterScreenValueNotifierWidget extends StatelessWidget {

  //logic
  void _incrementCounter() {
    notifier.value++;
  }

  void _decrementCounter() {
    notifier.value--;
  }

  void _resetCounter() {
    notifier.value = 0;
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
            ValueListenableBuilder(
              valueListenable: notifier,
              builder: (context, value, child) {
                return Text(
                  '${value}',
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
          ],
        ),
      ),
    );
  }
}
