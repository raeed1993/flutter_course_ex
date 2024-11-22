import 'package:example_project/statemanagement/provider_example/counter_app_provider/model/counter_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConsumerCounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var modelProvider = Provider.of<CounterModel>(context,listen: false);
     var modelProvider = Provider.of<CounterModel>(context,listen: true);

    var modelContext = context.watch<CounterModel>();

    print('build CounterView build');

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
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
              '${modelContext.value}',
              style: TextStyle(fontSize: 20),
            ),
            Consumer<CounterModel>(
              builder: (context, model, child) {
                return Text(
                  '${model.value}',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                );
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    modelContext.incrementCounter();
                  },
                  child: Text(
                    'Increment',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    modelContext.decrementCounter();
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
                    modelContext.resetCounter();
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => SecondView()));
              },
              child: Text(
                'Go To Second',
                style: TextStyle(fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondView extends StatelessWidget {
  const SecondView({super.key});

  @override
  Widget build(BuildContext context) {
    print('build SecondView');
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Counter Value:',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Consumer<CounterModel>(
            builder: (context, value, child) => Text(
              // '${context.watch<CounterModel>().value}',
              '${value.value}',

              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Provider.of<CounterModel>(context, listen: false)
                      .incrementCounter();
                  // context.read<CounterModel>().incrementCounter();
                },
                child: Text(
                  'Increment',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              // SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  Provider.of<CounterModel>(context, listen: false)
                      .decrementCounter();
                  // context.read<CounterModel>().decrementCounter();
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
                  // context.read<CounterModel>().resetCounter();
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
    ));
  }
}
