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

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  // Radio group value
  final List<String> _radioGroupOptions = ["Binärverkehr", "Reso Coder", "Flutter Explained", "Flutter"];
  // Selected radio button value
  String _selectedValue = "Binärverkehr";
  // Answered bool value
  bool _answered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text(
            "Welcher Flutter-YouTuber ist der coolste?",
            style: TextStyle(fontSize: 20),
          ),
          ListTile(
            leading: Radio<String>(
              value: _radioGroupOptions[0],
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
            ),
            title: const Text('Binärverkehr'),
          ),
          ListTile(
            leading: Radio(
              value: _radioGroupOptions[1],
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
            ),
            title: const Text('Reso Coder'),
          ),
          ListTile(
            leading: Radio(
              value: _radioGroupOptions[2],
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
            ),
            title: const Text('Flutter Explained'),
          ),
          ListTile(
            leading: Radio(
              value: _radioGroupOptions[3],
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
            ),
            title: const Text('Flutter'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _answered = true;
              });

              // Wait for 2 seconds
              Future.delayed(const Duration(seconds: 2), () {
                setState(() {
                  _answered = false;
                });
              });
            },
            child: const Text("Antworten"),
          ),
          if (_answered)
            Text(
              _selectedValue == "Binärverkehr" ? "Richtig!" : "Falsch!",
              // Color green if answer is correct, else red
              style: TextStyle(color: _selectedValue == "Binärverkehr" ? Colors.green : Colors.red),
            ),
        ],
      ),
    );
  }
}
