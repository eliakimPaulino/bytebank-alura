import 'package:flutter/material.dart';

class InteractiveViwer extends StatefulWidget {
  const InteractiveViwer({Key? key}) : super(key: key);

  @override
  State<InteractiveViwer> createState() => _InteractiveViwerState();
}

class _InteractiveViwerState extends State<InteractiveViwer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(double.infinity),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Map'),
          ),
        ),
      ),
    );
  }
}
