import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_hive/presentation/home_page/home_page.dart';
import 'package:flutter_hive/presentation/home_page/model/boxes.dart';
import 'package:flutter_hive/presentation/home_page/model/person.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(PersonAdapter());
  boxPersons = await Hive.openBox<Person>('personBox');
  runApp(const HomePage());
}
