import 'package:example_project/statemanagement/provider_example/counter_app_provider/model/counter_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('build CounterView');
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        leading: Consumer<CounterModel>(builder: (context, counterModel, _) {
          return Text(
             // '${context.watch<CounterModel>().value}',
             // '${Provider.of<CounterModel>(context).value}',
            '${counterModel.value}',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          );
        }),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter Value:',
              style: TextStyle(fontSize: 20),
            ),
            // Consumer<CounterModel>(builder: (context, counterModel, _) {
            //   return Text(
            //     // '${Provider.of<CounterModel>(context, listen: false).value}',
            //     '${counterModel.value}',
            //     style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            //   );
            // }),
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
                  onPressed: Provider.of<CounterModel>(context).resetCounter,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed:Provider.of<CounterModel>(context, listen: true)
                    .incrementCounter,
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
                onPressed: Provider.of<CounterModel>(context).resetCounter,
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
