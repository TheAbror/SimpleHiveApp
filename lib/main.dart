import 'package:flutter/material.dart';
import 'package:flutter_hive/presentation/home_page/model/boxes.dart';
import 'package:flutter_hive/presentation/home_page/model/person.dart';
import 'package:flutter_hive/presentation/widgets/textfield_decoration.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(PersonAdapter());
  boxPersons = await Hive.openBox<Person>('personBox');
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
          title: const Text('Flutter Hive'),
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
}
