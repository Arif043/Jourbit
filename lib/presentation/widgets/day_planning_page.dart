
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jourbit/data/journaling_repository.dart';
import 'package:jourbit/presentation/view_models/note_viewmodel.dart';
import 'package:jourbit/presentation/widgets/note_widget.dart';

import '../../data/models/enums.dart';

class DayPlanningPage extends StatefulWidget {

  static const double _iconSize = 48;
  static final JournalingRepository _repository = JournalingRepository();

  const DayPlanningPage({super.key});

  @override
  State<DayPlanningPage> createState() => _DayPlanningPageState();
}

class _DayPlanningPageState extends State<DayPlanningPage> {

  DailyHappiness? _selectedHappiness;

  @override
  void initState() {
    super.initState();
    _initHappinessButtons();
  }

  void _initHappinessButtons() async {
    final res = await DayPlanningPage._repository.fetchDailyDayCheck();
    if (mounted) {
      setState(() => _selectedHappiness = res);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(context.tr('daily_planning'), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),),
        ),
        NoteWidget(title: context.tr('daily_goals'), subtitle: context.tr('daily_goals_subtitle'), viewModel: NoteViewModel.createDailyGoalsViewModel(),),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(context.tr('daily_reflection'), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),),
        ),
        NoteWidget(title: context.tr('daily_insights'), subtitle: context.tr('daily_insights_subtitle'), highlight: false, viewModel: NoteViewModel.createDailyInsightsViewModel(),),
        NoteWidget(title: context.tr('daily_optimizations'), subtitle: context.tr('daily_optimizations_subtitle'), highlight: false, viewModel: NoteViewModel.createDailyOptimizationViewModel(),),
        NoteWidget(title: context.tr('daily_gratitudes'), subtitle: context.tr('daily_gratitudes_subtitle'), highlight: false, viewModel: NoteViewModel.createDailyGratitudeViewModel(),),
        NoteWidget(title: context.tr('daily_success'), subtitle: context.tr('daily_success_subtitle'), viewModel: NoteViewModel.createDailySuccessViewModel(),),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          customPaymentCardButton('assets/images/very_unhappy.svg', DailyHappiness.veryUnhappy),
          customPaymentCardButton('assets/images/unhappy.svg', DailyHappiness.unhappy),
          customPaymentCardButton('assets/images/some_what_dissatisfied.svg', DailyHappiness.somewhatDissatisfied),
          customPaymentCardButton('assets/images/neutral.svg', DailyHappiness.neutral),
          customPaymentCardButton('assets/images/some_what_satisfied.svg', DailyHappiness.somewhatSatisfied),
          customPaymentCardButton('assets/images/happy.svg', DailyHappiness.happy),
          customPaymentCardButton('assets/images/very_happy.svg', DailyHappiness.veryHappy)
        ])
      ],
    );
  }

  Widget customPaymentCardButton(String iconName, DailyHappiness happiness) {
    return SizedBox(
      width: DayPlanningPage._iconSize,
      height: DayPlanningPage._iconSize,
      child: OutlinedButton(
        onPressed: () {
          setState(() {
            _selectedHappiness = happiness;
          });
            DayPlanningPage._repository.updateDailyDayCheck(happiness);
        },
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          side: BorderSide(
              width: (_selectedHappiness == happiness) ? 2.0 : 0.5,
              color: (_selectedHappiness == happiness)
                  ? Colors.green
                  : Colors.blue.shade600),
        ),
        child: SvgPicture.asset(iconName),
      ),
    );
  }

}