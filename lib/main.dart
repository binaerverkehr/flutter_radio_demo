import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Radio & RadioListTile Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DemoPage(),
    );
  }
}

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text(
            "Welcher Flutter-YouTuber ist der coolste?",
            style: TextStyle(fontSize: 20),
          ),
          ListTile(
            title: Text('Binärverkehr'),
          ),
          ListTile(
            title: Text('Reso Coder'),
          ),
          ListTile(
            title: Text('Flutter Explained'),
          ),
          ListTile(
            title: Text('Flutter'),
          ),
          Text("Das ist ...")
        ],
      ),
    );
  }
}
