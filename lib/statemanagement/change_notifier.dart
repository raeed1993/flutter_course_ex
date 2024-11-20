import 'package:flutter/material.dart';

//logic
class CounterChangeNotifier extends ChangeNotifier {
  int value = 0;

  void incrementCounter() {
    print('_incrementCounter');
    value++;
    notifyListeners();
  }

  void decrementCounter() {
    print('_decrementCounter');
    value--;
    notifyListeners();
  }

  void resetCounter() {
    print('_resetCounter');
    value = 0;
    notifyListeners();
  }
}

class ChangeNotifierWidget extends StatefulWidget {
  ChangeNotifierWidget({super.key});

  @override
  State<ChangeNotifierWidget> createState() => _ChangeNotifierWidgetState();
}

class _ChangeNotifierWidgetState extends State<ChangeNotifierWidget> {
  CounterChangeNotifier controller = CounterChangeNotifier();

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
          children: <Widget>[
            Text(
              'Counter Value:',
              style: TextStyle(fontSize: 20),
            ),
            ListenableBuilder(
              listenable: controller,
              builder: (context, child) {
                return Text(
                  '${controller.value}',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                );
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: controller.incrementCounter,
                  child: Text(
                    'Increment',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: controller.decrementCounter,
                  child: Text(
                    'Decrement',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: controller.resetCounter,
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
// import 'package:flutter/material.dart';
//
// class CounterNotifier extends ChangeNotifier {
//   int _counter = 0;
//
//   int get counter => _counter;
//
//   void increment() {
//     _counter++;
//     notifyListeners(); // إعلام المستمعين بوجود تغيير
//   }
// }
//
// class ChangeNotifierWidget extends StatefulWidget {
//   @override
//   _ChangeNotifierWidgetState createState() => _ChangeNotifierWidgetState();
// }
//
// class _ChangeNotifierWidgetState extends State<ChangeNotifierWidget> {
//   final CounterNotifier _counterNotifier = CounterNotifier();
//
//   @override
//   void dispose() {
//     _counterNotifier.dispose(); // تنظيف ChangeNotifier عند إلغاء الويدجت
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('ChangeNotifier without Provider')),
//       body: Center(
//         child: ListenableBuilder(
//         listenable: _counterNotifier, // ربط ChangeNotifier مع الويدجت
//           builder: (context, child) {
//             return Text(
//               'Counter: ${_counterNotifier.counter}',
//               style: TextStyle(fontSize: 24),
//             );
//           },
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _counterNotifier.increment, // استدعاء وظيفة التحديث
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: ChangeNotifierWidget(),
//   ));
// }
