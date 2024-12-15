import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jourbit/presentation/view_models/note_viewmodel.dart';
import 'package:jourbit/presentation/widgets/note_widget.dart';

class WeekPlanningPage extends StatelessWidget {

  const WeekPlanningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(context.tr('weekly_reflection'), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),),
        ),
        NoteWidget(title: context.tr('weekly_success'), subtitle: context.tr('weekly_success_subtitle'), viewModel: NoteViewModel.createWeeklySuccessViewModel()),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
          child: Text(context.tr('weekly_planning'), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),),
        ),
        NoteWidget(title: context.tr('weekly_goals'), subtitle: context.tr('weekly_goals_subtitle'),  viewModel: NoteViewModel.createWeeklyGoalsViewModel(),),
      ],
    );
  }
}