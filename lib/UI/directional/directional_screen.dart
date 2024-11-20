import 'package:flutter/material.dart';

class DirectionalScreen extends StatelessWidget {
  const DirectionalScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Directionality(
//         textDirection: TextDirection.ltr,
//         child: Stack(
//           children: [
//             Column(
//               children: [
//                 Container(
//                   margin: EdgeInsetsDirectional.fromSTEB(25, 51, 30, 0),
//                   width: MediaQuery.sizeOf(context).width / 2,
//                   height: MediaQuery.sizeOf(context).width / 2,
//                   decoration: BoxDecoration(
//                       color: Colors.green,
//                       borderRadius: BorderRadiusDirectional.only(
//                           topStart: Radius.circular(30),
//                           topEnd: Radius.circular(30))),
//                   child: Text('مرحبا انا مطور فلاتر '),
//                 )
//               ],
//             ),
//
//           ],
//         ),
//       )),
//     );
//   }
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(20),
                            height: 150,
                          ),
                        );

                        return AlertDialog(
                          title: Text("approve"),
                          content: Text("do you want continue"),
                          actions: [
                            TextButton(
                              child: Text("cancel"),
                              onPressed: () {
                                Navigator.of(context).pop(); // يغلق الـ Dialog
                              },
                            ),
                            TextButton(
                              child: Text("Ok"),
                              onPressed: () {
                                // تنفيذ الإجراء المطلوب
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('dialog'))
            ],
          ),
        ),
      ),
    );
  }
}
