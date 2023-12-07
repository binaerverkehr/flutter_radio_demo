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
    return Scaffold(
      body: Column(
        children: [
          const Text(
            "Welcher Flutter-YouTuber ist der coolste?",
            style: TextStyle(fontSize: 20),
          ),
          const ListTile(
            title: Text('Binärverkehr'),
          ),
          const ListTile(
            title: Text('Reso Coder'),
          ),
          const ListTile(
            title: Text('Flutter Explained'),
          ),
          const ListTile(
            title: Text('Flutter'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Antworten"),
          ),
        ],
      ),
    );
  }
}
