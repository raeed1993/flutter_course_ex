import 'dart:math';
import 'package:flutter/material.dart';

class SwapContainer extends StatefulWidget {
  @override
  State<SwapContainer> createState() => _SwapContainerState();
}

class _SwapContainerState extends State<SwapContainer> {
  List<Widget> myContainers = [
    Padding(
      // Use key at the top level
      key: UniqueKey(),
      padding: const EdgeInsets.all(8.0),
      child: GetContainer(

        color: Colors.red,
        name: "first",
      ),
    ),
    Padding(
      // Use kay at the top level
      key: UniqueKey(),
      padding: const EdgeInsets.all(8.0),
      child: GetContainer(

        color: Colors.green,
        name: "second",
      ),
    ),
  ];

  swapContainers() {
    setState(() {
      myContainers.insert(1, myContainers.removeAt(0));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox.expand(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: myContainers,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: swapContainers,
            child: const Text("Swap"),
          )
        ],
      ),
    ));
  }
}



class GetContainer extends StatefulWidget {
  GetContainer({super.key, required this.color, required this.name});

  Color color;
  String name;

  @override
  _GetContainerState createState() => _GetContainerState();
}

class _GetContainerState extends State<GetContainer> {
  late Color color;
  late String name;

  @override
  void initState() {
    super.initState();
    color = widget.color;
    name = widget.name;
    print('initState');
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
      // Colors.primaries[Random().nextInt(Colors.primaries.length)] , // to Generate a Random color for the Container
      child: Center(
          child: Text(
        name,
        style: TextStyle(fontSize: 17, color: Colors.white),
      )),
    );
  }
}
