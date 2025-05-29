
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:jourbit/data/journal_repository.dart';
import 'package:jourbit/presentation/view_model/journal/day_planning_page_view_model.dart';
import 'package:jourbit/presentation/view_model/journal/note_view_model.dart';
import 'package:provider/provider.dart';

import 'note_widget.dart';

class DayPlanningPage extends StatefulWidget {

  static const double _iconSize = 48;

  const DayPlanningPage({super.key});

  @override
  State<DayPlanningPage> createState() => _DayPlanningPageState();
}

class _DayPlanningPageState extends State<DayPlanningPage> {

  @override
  void initState() {
    super.initState();
    Future.microtask(() => Provider.of<DayPlanningPageViewModel>(context, listen: false).initHappinessButtons());
  }

  @override
  Widget build(BuildContext context) {
    final repository = GetIt.instance.get<JournalRepository>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(context.tr('daily_planning'), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),),
        ),
        ChangeNotifierProvider(
          create: (_) => NoteViewModel.createDailyGoalsViewModel(repository),
          child:  NoteWidget(title: context.tr('daily_goals'), subtitle: context.tr('daily_goals_subtitle')),
        ),
        const Divider(thickness: 2, indent: 8, endIndent: 8,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(context.tr('daily_reflection'), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),),
        ),
        ChangeNotifierProvider(
          create: (_) => NoteViewModel.createDailyInsightsViewModel(repository),
          child: NoteWidget(title: context.tr('daily_insights'), subtitle: context.tr('daily_insights_subtitle'), highlight: false),),
        const Divider(),
        ChangeNotifierProvider(
          create: (_) => NoteViewModel.createDailyOptimizationViewModel(repository),
          child: NoteWidget(title: context.tr('daily_optimizations'), subtitle: context.tr('daily_optimizations_subtitle'), highlight: false,),
        ),
        const Divider(),
        ChangeNotifierProvider(
          create: (_) => NoteViewModel.createDailyGratitudeViewModel(repository),
          child: NoteWidget(title: context.tr('daily_gratitudes'), subtitle: context.tr('daily_gratitudes_subtitle'), highlight: false),
        ),
        ChangeNotifierProvider(
          create: (_) => NoteViewModel.createDailySuccessViewModel(repository),
          child: NoteWidget(title: context.tr('daily_success'), subtitle: context.tr('daily_success_subtitle'),),
        ),
        Consumer<DayPlanningPageViewModel>(
          builder: (_, viewModel, __) =>
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                customPaymentCardButton(viewModel, 'assets/images/very_unhappy.svg', 0),
                customPaymentCardButton(viewModel, 'assets/images/unhappy.svg', 1),
                customPaymentCardButton(viewModel, 'assets/images/some_what_dissatisfied.svg', 2),
                customPaymentCardButton(viewModel, 'assets/images/neutral.svg', 3),
                customPaymentCardButton(viewModel, 'assets/images/some_what_satisfied.svg', 4),
                customPaymentCardButton(viewModel, 'assets/images/happy.svg', 5),
                customPaymentCardButton(viewModel, 'assets/images/very_happy.svg', 6)
              ]),
        ),
        const SizedBox(height: 20,)
      ],
    );
  }

  Widget customPaymentCardButton(DayPlanningPageViewModel viewModel, String iconName, int happinessIndex) {
    return SizedBox(
      width: DayPlanningPage._iconSize,
      height: DayPlanningPage._iconSize,
      child: OutlinedButton(
        onPressed: () => viewModel.setHappiness(happinessIndex),
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          side: BorderSide(
              width: viewModel.isCurrentButton(happinessIndex) ? 2.0 : 0.5,
              color: viewModel.isCurrentButton(happinessIndex) ? Colors.green : Colors.blue.shade600),
        ),
        child: SvgPicture.asset(iconName),
      ),
    );
  }

}