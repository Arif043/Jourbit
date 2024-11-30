import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jourbit/pages/journaling_view_page.dart';
import 'package:jourbit/widgets/note_widget.dart';

class WeekPlanningPage extends StatefulWidget {

  final JournalingViewPage rootPage;

  const WeekPlanningPage({super.key, required this.rootPage});

  @override
  State<WeekPlanningPage> createState() => _WeekPlanningPageState();
}

class _WeekPlanningPageState extends State<WeekPlanningPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Wochenreflexion', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),),
        ),
        NoteWidget(title: 'Erfolge', subtitle: 'Worauf bin ich besonders stolz?',),
        NoteWidget(title: 'Wochenziele', subtitle: 'Wo liegt heute mein Fokus diese Woche?',)
      ],
    );
  }
}