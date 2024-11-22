import 'package:example_project/statemanagement/provider_example/counter_app_provider/model/counter_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/counter_selector_model.dart';

class SelectorCounterView extends StatelessWidget {
//consumer problem
//   @override
//   Widget build(BuildContext context) {
//     var modelProvider =
//         Provider.of<CounterSelectorModel>(context, listen: false);
//     print('build CounterView build');
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Employee Sign in App'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Spacer(),
//             Text(
//               'Employees:',
//               style: TextStyle(fontSize: 20),
//             ),
//             Spacer(),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Spacer(),
//                 Consumer<CounterSelectorModel>(
//                   builder: (context, value, child) {
//                     print('builder valueLogin');
//                     return Text(
//                       '${value.valueLogin}',
//                       style:
//                           TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
//                     );
//                   },
//                 ),
//                 Spacer(),
//                 Consumer<CounterSelectorModel>(
//                   builder: (context, value, child) {
//                     print('builder valueLogout');
//                     return Text(
//                       '${value.valueLogout}',
//                       style:
//                           TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
//                     );
//                   },
//                 ),
//                 Spacer(),
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     modelProvider.login();
//                   },
//                   child: Text(
//                     'Login',
//                     style: TextStyle(fontSize: 22),
//                   ),
//                 ),
//                 SizedBox(width: 10),
//                 ElevatedButton(
//                   onPressed: () {
//                     modelProvider.logout();
//                   },
//                   child: Text(
//                     'Logout',
//                     style: TextStyle(fontSize: 22),
//                   ),
//                 ),
//                 SizedBox(width: 10),
//               ],
//             ),
//             Spacer(),
//           ],
//         ),
//       ),
//     );
//   }

  @override
  Widget build(BuildContext context) {
    var modelProvider =
        Provider.of<CounterSelectorModel>(context, listen: false);
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Selector<CounterSelectorModel, int>(
                  builder: (context, value, child) {
                    print('builder valueLogin');
                    return Text(
                      '${value}',
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    );
                  },
                  selector: (context, object) => object.valueLogin,
                ),
                Spacer(),
                Selector<CounterSelectorModel, int>(
                  builder: (context, value, child) {
                    print('builder valueLogout');
                    return Text(
                      '${value}',
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    );
                  },
                  selector: (context, object) => object.valueLogout,
                ),
                Spacer(),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    modelProvider.login();
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    modelProvider.logout();
                  },
                  child: Text(
                    'Logout',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
