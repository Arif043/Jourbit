import 'package:flutter/cupertino.dart';
import 'package:jourbit/pages/journaling_view_page.dart';

import '../widgets/note_widget.dart';

class MonthPlanningPage extends StatefulWidget {

  final JournalingViewPage rootPage;

  const MonthPlanningPage({super.key, required this.rootPage});

  @override
  State<MonthPlanningPage> createState() => _MonthPlanningPageState();
}

class _MonthPlanningPageState extends State<MonthPlanningPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Monatsplanung', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),),
        ),
        NoteWidget(title: 'Monatsziele', subtitle: 'Wo liegt mein Fokus diesen Monat?',),
      ],
    );
  }
}