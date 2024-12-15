import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:jourbit/presentation/view_models/note_viewmodel.dart';

import 'note_widget.dart';

class MonthPlanningPage extends StatelessWidget {

  const MonthPlanningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(context.tr('monthly_planning'), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),),
        ),
        NoteWidget(title: context.tr('monthly_goals'), subtitle: context.tr('monthly_goals_subtitle'), viewModel: NoteViewModel.createMonthlyGoalsViewModel(),),
        NoteWidget(title: context.tr('monthly_events'), subtitle: context.tr('monthly_events_subtitle'), viewModel: NoteViewModel.createMonthlyEventsViewModel(), highlight: false,)
      ],
    );
  }
}