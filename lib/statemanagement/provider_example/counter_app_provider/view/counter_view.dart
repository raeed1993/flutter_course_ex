import 'package:example_project/statemanagement/provider_example/counter_app_provider/model/counter_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('build CounterView build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        // leading: Text(
        //    '${context.watch<CounterModel>().value}',
        //    // '${Provider.of<CounterModel>(context).value}',
        //
        //   style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        // ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter Value:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '${context.watch<CounterModel>().value}',
              // '${Provider.of<CounterModel>(context).value}',

              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Provider.of<CounterModel>(context, listen: false)
                        .incrementCounter();
                  },
                  child: Text(
                    'Increment',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Provider.of<CounterModel>(context, listen: false)
                        .decrementCounter();
                    print('decrementCounter');
                  },
                  child: Text(
                    'Decrement',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Provider.of<CounterModel>(context, listen: false)
                        .resetCounter();
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}


