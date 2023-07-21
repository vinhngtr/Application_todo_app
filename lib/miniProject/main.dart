import 'package:flutter/material.dart';
import 'package:todoapp/miniProject/TextFied.dart';
import 'package:todoapp/miniProject/miniProject.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LT basic in flutter',
      home: MiniProject(), //! tùy biến các class cần hiển thị ra màn hình chính
    ),
  );
}

class ContainerLT extends StatelessWidget {
  const ContainerLT({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('LT container'),
        iconTheme: const IconThemeData(color: Colors.white),
        leading: const Icon(Icons.home),
        backgroundColor: const Color.fromARGB(31, 107, 104, 104),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            margin: const EdgeInsets.all(10),
            color: Colors.orange,
            child: const Text('BOX 1'),
          ),
          Container(
            width: 200,
            height: 200,
            margin: const EdgeInsets.all(10),
            color: Colors.orange,
            child: const Text('BOX 2'),
          ),
          Container(
            width: 100,
            height: 100,
            margin: const EdgeInsets.all(10),
            color: Colors.orange,
            child: const Text('BOX 3'),
          ),
        ],
      ),
    );
  }
}
