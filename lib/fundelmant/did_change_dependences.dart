//didChangeDependencies

import 'package:example_project/main.dart';
import 'package:flutter/material.dart';

class DidChangeWidget extends StatefulWidget {
  @override
  _DidChangeWidgetState createState() => _DidChangeWidgetState();
}

class _DidChangeWidgetState extends State<DidChangeWidget> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.grey,
      ),
      themeMode: _themeMode,
      home: MyHomePage(toggleTheme: _toggleTheme),
    );
  }
}


class MyHomePage extends StatefulWidget {
  final Function toggleTheme;

  MyHomePage({required this.toggleTheme});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color? primaryColor;
  int asd = 50;
  int? _dropDownValue = 1;
  bool? _checkboxValue = true;
  TextEditingController? taskInputController;

  List<Widget> tasks = [];


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    primaryColor = Theme.of(context).primaryColor;
    print('didChangeDependencies ');
  }

  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget ');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text('Theme Example'),
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: () {
                widget.toggleTheme();
              },
              child: Text('Toggle Theme'),
            ),



















            // TextFormField(
            //   decoration: InputDecoration(
            //     labelStyle: TextStyle(color: Colors.red),
            //     labelText: 'Enter your text',
            //     // النص الذي يظهر فوق الحقل عند الإدخال
            //     border: OutlineInputBorder(),
            //     // إطار يحيط بالحقل عند عدم التركيز
            //     enabledBorder: OutlineInputBorder(
            //       borderSide: BorderSide(
            //           width: 2,
            //           color:
            //           Colors.green), // لون الإطار عندما يكون الحقل غير مفعل
            //     ),
            //     focusedBorder: OutlineInputBorder(
            //       borderSide: BorderSide(
            //           width: 2,
            //           color:
            //           Colors.red), // لون الإطار عندما يتم التركيز على الحقل
            //     ),
            //   ),
            // ),

            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: TextFormField(
            //       obscureText: true,
            //       decoration: InputDecoration(
            //           fillColor: Colors.white,
            //           // errorText: 'invalid',
            //           filled: true,
            //           border: InputBorder.none,
            //           // labelText: '+90 534 773 95 76',
            //           labelStyle: TextStyle(color: Colors.teal),
            //           prefixIcon: Icon(
            //             Icons.phone,
            //             color: Colors.teal,
            //           )),
            //       style: TextStyle(color: Colors.teal)),
            // ),

            // ListTile(
            //   leading: Text(' task'),
            //   trailing:  Checkbox(
            //       value: _checkboxValue,
            //       onChanged: (value) {
            //         setState(() {
            //           _checkboxValue = value;
            //         });
            //       }),
            //
            // ),
            DropdownButton(
                value: _dropDownValue,
                items: [
                  DropdownMenuItem(value: 1, child: Text('data1')),
                  DropdownMenuItem(value: 2, child: Text('data2')),
                  DropdownMenuItem(value: 3, child: Text('data3')),
                  DropdownMenuItem(value: 4, child: Text('data4')),
                  DropdownMenuItem(value: 5, child: Text('data5')),
                ],
                onChanged: (value) {
                  setState(() {
                    _dropDownValue = value;

                  });
                }),

          ],
        ),
      ),
      // bottomSheet: _checkboxValue!
      //     ? Container(
      //   decoration: BoxDecoration(
      //       color: Colors.red,
      //       borderRadius: BorderRadius.only(
      //           topRight: Radius.circular(10),
      //           topLeft: Radius.circular(10))),
      //   height: 150,
      //   padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      //   child: Column(
      //     children: [
      //       TextFormField(
      //         style: TextStyle(color: Colors.black),
      //         decoration: InputDecoration(
      //             fillColor: Colors.white,
      //             // errorText: 'invalid',
      //             filled: true,
      //             border: InputBorder.none,
      //             labelText: 'task name',
      //             labelStyle: TextStyle(color: Colors.teal),
      //             prefixIcon: Icon(
      //               Icons.task,
      //               color: Colors.teal,
      //             )),
      //         // controller: taskInputController,
      //       ),
      //       ElevatedButton(onPressed: () {
      //         tasks.add(
      //             ListTile(
      //               leading: Text(' task'),
      //               trailing: Checkbox(
      //                   value: _checkboxValue,
      //                   onChanged: (value) {
      //                     setState(() {
      //                       _checkboxValue = value;
      //                     });
      //                   }),
      //
      //             )
      //         );
      //       }, child: Text('add'))
      //     ],
      //   ),
      // )
      //     : null,
    );
  }

}



//


//











//
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: Text('Theme Example'),
//       // backgroundColor: _primaryColor,
//     ),
//     body: Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: tasks.map((e) => e).toList(),
//       ),
//     ),
//     floatingActionButton: ElevatedButton(onPressed: (){
//       setState(() {
//         _checkboxValue=!_checkboxValue!;
//       });
//
//     },child: Icon(Icons.add),),
//     bottomSheet: _checkboxValue!
//         ? Container(
//       decoration: BoxDecoration(
//           color: Colors.red,
//           borderRadius: BorderRadius.only(
//               topRight: Radius.circular(10),
//               topLeft: Radius.circular(10))),
//       height: 150,
//       padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
//       child: Column(
//         children: [
//           TextFormField(
//             style: TextStyle(color: Colors.black),
//             decoration: InputDecoration(
//                 fillColor: Colors.white,
//                 // errorText: 'invalid',
//                 filled: true,
//                 border: InputBorder.none,
//                 labelText: 'task name',
//                 labelStyle: TextStyle(color: Colors.teal),
//                 prefixIcon: Icon(
//                   Icons.task,
//                   color: Colors.teal,
//                 )),
//             controller: taskInputController,
//           ),
//           ElevatedButton(onPressed: () {
//             setState(() {
//               tasks.add(
//
//                   ListTile(
//                     leading: Text(' task',style: TextStyle(textBaseline: TextBaseline.ideographic)),
//                     trailing:  Checkbox(
//                         value: _checkboxValue,
//                         onChanged: (value) {
//                           setState(() {
//                             _checkboxValue = value;
//                           });
//                         }),
//
//                   )
//               );
//             });
//
//           }, child: Text('add'))
//         ],
//       ),
//     )
//         : null,
//   );
// }
