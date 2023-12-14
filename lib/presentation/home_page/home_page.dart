import 'package:flutter/material.dart';
import 'package:flutter_hive/presentation/home_page/model/boxes.dart';
import 'package:flutter_hive/presentation/home_page/model/person.dart';
import 'package:flutter_hive/presentation/widgets/textfield_decoration.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

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
                      controller: nameController,
                      textInputAction: TextInputAction.next,
                      decoration: textfielDecoration('Name'),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: ageController,
                      decoration: textfielDecoration('Age'),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          boxPersons.put(
                            'key_${nameController.text}',
                            Person(
                              name: nameController.text,
                              age: int.parse(ageController.text),
                            ),
                          );
                          nameController.text = '';
                          ageController.text = '';
                        });
                      },
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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: boxPersons.length,
                        itemBuilder: (context, index) {
                          Person person = boxPersons.getAt(index);

                          return ListTile(
                            title: Text(person.name),
                            subtitle: const Text('Name'),
                            trailing: Text('Age: ${person.age}'),
                            leading: IconButton(
                              onPressed: () {
                                setState(() {
                                  boxPersons.deleteAt(index);
                                });
                              },
                              icon: const Icon(Icons.remove),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  boxPersons.clear();
                });
              },
              child: const Text('Delete All '),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
