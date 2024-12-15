import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:jourbit/data/local_datasource.dart';
import 'package:jourbit/presentation/widgets/habit_view_page.dart';
import 'package:jourbit/presentation/widgets/journaling_view_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    supportedLocales: [Locale('en', 'US'), Locale('de', 'DE')],
    path: 'assets/lang',
    fallbackLocale: Locale('en', 'US'),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
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

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin, WidgetsBindingObserver {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.detached) {
      debugPrint('CLOSE');
      LocalDatasource().close();
    }
  }

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
                  Tab(icon: Image.asset('assets/images/habit.png'), text: context.tr('habit')),
                  Tab(icon: Image.asset('assets/images/journal.png'), text: context.tr('journaling')),
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