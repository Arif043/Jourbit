import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jourbit/data/habit_repository.dart';
import 'package:jourbit/data/journal_repository.dart';
import 'package:jourbit/presentation/view/habit/habit_view_page.dart';
import 'package:jourbit/presentation/view/journal/journaling_view_page.dart';
import 'package:jourbit/presentation/view_model/habit/habit_view_page_view_model.dart';
import 'package:jourbit/presentation/view_model/journal/journaling_view_page_view_model.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GetIt.I.registerSingleton<JournalRepository>(JournalRepository());
  GetIt.I.registerSingleton<HabitRepository>(HabitRepository());
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    supportedLocales: [Locale('en', 'US'), Locale('de', 'DE')],
    path: 'assets/lang',
    fallbackLocale: Locale('en', 'US'),
    child: MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => JournalingViewPageViewModel(GetIt.I.get<JournalRepository>())),
        ChangeNotifierProvider(create: (_) => HabitViewPageViewModel(GetIt.I.get<HabitRepository>()))
      ],
      child: const MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Jourbit',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Jourbit'),
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
      // debugPrint('CLOSE');
      // LocalDatasource().close();
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
              const Expanded(
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