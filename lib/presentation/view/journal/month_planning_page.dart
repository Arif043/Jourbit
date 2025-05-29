import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jourbit/data/journal_repository.dart';
import 'package:jourbit/presentation/view_model/journal/note_view_model.dart';
import 'package:provider/provider.dart';
import 'note_widget.dart';

class MonthPlanningPage extends StatelessWidget {

  const MonthPlanningPage({super.key});

  @override
  Widget build(BuildContext context) {
    final repository = GetIt.instance.get<JournalRepository>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(context.tr('monthly_planning'), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),),
        ),
        ChangeNotifierProvider(
          create: (_) => NoteViewModel.createMonthlyGoalsViewModel(repository),
          child: NoteWidget(title: context.tr('monthly_goals'), subtitle: context.tr('monthly_goals_subtitle')),
        ),
        const Divider(),
        ChangeNotifierProvider(
          create: (_) => NoteViewModel.createMonthlyEventsViewModel(repository),
          child: NoteWidget(title: context.tr('monthly_events'), subtitle: context.tr('monthly_events_subtitle'), highlight: false,),
        ),
      ],
    );
  }
}