import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:jourbit/data/day.dart';
import 'package:jourbit/data/journaling_repository.dart';
import 'package:jourbit/data/month.dart';
import 'package:jourbit/presentation/widgets/day_planning_page.dart';
import 'package:jourbit/presentation/widgets/month_planning_page.dart';
import 'package:jourbit/presentation/widgets/week_planning_page.dart';

import '../../data/week.dart';

class JournalingViewPage extends StatefulWidget {

  static final _repository = JournalingRepository();

  const JournalingViewPage({super.key});

  @override
  State<JournalingViewPage> createState() => _JournalingViewPageState();
}

class _JournalingViewPageState extends State<JournalingViewPage> {

  var _journalingType = 0;

  void _performNavigation(void Function() navFunction) async {
    navFunction();
    if (JournalingViewPage._repository.state is Day) {
      _journalingType = 0;
    }
    else if (JournalingViewPage._repository.state is Week) {
      _journalingType = 1;
    }
    else if (JournalingViewPage._repository.state is Month) {
      _journalingType = 2;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: _journalingType,
              children: [
                SingleChildScrollView(child: DayPlanningPage(key: ValueKey(JournalingViewPage._repository.date),),),
                const SingleChildScrollView(child: WeekPlanningPage(),),
                const SingleChildScrollView(child: MonthPlanningPage(),)
              ],
            ),
          ),
          Visibility(
            visible: !isKeyboardVisible,
              child: Column(
            children: [
              const Visibility(
                visible: false,
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 24, right: 16, left: 16, bottom: 16),
                  child: Text(
                    'Ich bin nicht derjenige der entscheidet, ob ich erfolgreich bin oder nicht. Ich werde kämpfen und es beweisen',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () => _performNavigation(JournalingViewPage._repository.state.performBackwardNavigation),
                      icon: const Icon(Icons.arrow_back)),
                  _buildDateText(),
                  IconButton(
                      onPressed: () => _performNavigation(JournalingViewPage._repository.state.performForwardNavigation),
                      icon: const Icon(Icons.arrow_forward)),
                ],
              )
            ],
          ))
        ],
      );
    });
  }

  Widget _buildDateText() {
    if (_journalingType == 0) {
      return Text(JournalingViewPage._repository.wellFormattedDate);
    }
    else if (_journalingType == 1) {
      return Text('${JournalingViewPage._repository.weekDay}. ${context.tr('calendar_week')}');
    }
    else if (_journalingType == 2) {
      return Text('${JournalingViewPage._repository.month}, ${JournalingViewPage._repository.year}');
    }
    return Container();
  }
}