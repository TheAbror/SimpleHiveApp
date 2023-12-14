import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 45, 111),
          title: const Text('FLutter Hive'),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 45, 111),
        body: Column(
          children: [
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: textfielDecoration('Name'),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: textfielDecoration('Age'),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Add '),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Delete All '),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  InputDecoration textfielDecoration(String hintStyle) {
    return InputDecoration(
      filled: true,
      border: InputBorder.none, // Remove border color
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green.shade900, width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green.shade900, width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green.shade900, width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green.shade900, width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      hintText: hintStyle,
      fillColor: Colors.grey.shade100,
      hintStyle: const TextStyle(color: Colors.black),
    );
  }
}
