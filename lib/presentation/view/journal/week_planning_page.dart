import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jourbit/data/journal_repository.dart';
import 'package:jourbit/presentation/view_model/journal/note_view_model.dart';
import 'package:provider/provider.dart';
import 'note_widget.dart';

class WeekPlanningPage extends StatelessWidget {

  const WeekPlanningPage({super.key});

  @override
  Widget build(BuildContext context) {
    final repository = GetIt.instance.get<JournalRepository>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(context.tr('weekly_reflection'), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),),
        ),
        ChangeNotifierProvider(
          create: (_) => NoteViewModel.createWeeklySuccessViewModel(repository),
          child: NoteWidget(title: context.tr('weekly_success'), subtitle: context.tr('weekly_success_subtitle')),
        ),
        const Divider(thickness: 2, indent: 8, endIndent: 8,),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
          child: Text(context.tr('weekly_planning'), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),),
        ),
        ChangeNotifierProvider(
          create: (_) => NoteViewModel.createWeeklyGoalsViewModel(repository),
          child: NoteWidget(title: context.tr('weekly_goals'), subtitle: context.tr('weekly_goals_subtitle'),),
        ),
      ],
    );
  }
}