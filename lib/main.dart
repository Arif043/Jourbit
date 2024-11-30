import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:jourbit/data_loader.dart';
import 'package:jourbit/pages/habit_view_page.dart';
import 'package:jourbit/pages/journaling_view_page.dart';
import 'package:jourbit/service/day.dart';
import 'package:jourbit/service/state.dart' as my_lib;

void main() async {
  initDatabase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  static Jiffy date = Jiffy.now();
  static my_lib.State state = Day();

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Me',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyanAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Me'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Anzahl der Tabs
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 32),
          child: Column(
            children: [
              // TabBar oben
              TabBar(
                indicatorColor: Colors.white,
                tabs: [
                  Tab(icon: Icon(Icons.home), text: 'Habit'),
                  Tab(icon: Icon(Icons.star), text: 'Journaling'),
                ],
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
              ),
              // Inhalt der Tabs
              Expanded(
                child: TabBarView(
                  children: [
                    HabitViewPage(),
                    JournalingViewPage()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}