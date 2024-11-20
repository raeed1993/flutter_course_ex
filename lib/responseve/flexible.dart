import 'package:flutter/material.dart';

class FlexibleTest extends StatelessWidget {
  const FlexibleTest({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flexible vs Expanded in Column'),
        ),
        body: Column(
          children: [
            // Expanded(
            //   child: Container(
            //     color: Colors.red,
            //     child: Center(
            //       child: Text(
            //         'Expanded',
            //         style: TextStyle(color: Colors.white, fontSize: 24),
            //       ),
            //     ),
            //   ),
            // ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                color: Colors.green,
                 height: 150,
                child: Center(
                  child: Text(
                    'Flexible (loose)',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Flexible (tight)',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.orange,
                child: Center(
                  child: Text(
                    'Expanded',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return SafeArea(
  //     child: Scaffold(
  //
  //       body: Column(
  //         children: [
  //           Row(
  //             children: [
  //
  //               Expanded(
  //                 child: Container(
  //                   color: Colors.red,
  //                   height: 100,
  //                   child: Center(
  //                     child:
  //                         Text('Expanded', style: TextStyle(color: Colors.white)),
  //                   ),
  //                 ),
  //               ),
  //
  //               Flexible(
  //                 fit: FlexFit.loose,
  //                 child: Container(
  //                   color: Colors.green,
  //                   height: 100,
  //                   width: 50,
  //                   child: Center(
  //                     child:
  //                         Text('Flexible', style: TextStyle(color: Colors.white)),
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //           Row(
  //             children: [
  //
  //               Flexible(
  //                 fit: FlexFit.loose,
  //                 child: Container(
  //                   color: Colors.blue,
  //                   height: 100,
  //                   width: 100,
  //                   child: Center(
  //                     child: Text('Flexible tight',
  //                         style: TextStyle(color: Colors.white)),
  //                   ),
  //                 ),
  //               ),
  //
  //               Expanded(
  //                 child: Container(
  //                   color: Colors.orange,
  //                   height: 100,
  //                   child: Center(
  //                     child:
  //                         Text('Expanded', style: TextStyle(color: Colors.white)),
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
