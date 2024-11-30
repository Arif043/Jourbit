import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:jourbit/pages/day_planning_page.dart';
import 'package:jourbit/pages/month_planning_page.dart';
import 'package:jourbit/pages/week_planning_page.dart';
import 'package:jourbit/service/day.dart';
import 'package:jourbit/service/month.dart';

import '../main.dart';
import '../service/week.dart';

class JournalingViewPage extends StatefulWidget {
  const JournalingViewPage({super.key});

  @override
  State<JournalingViewPage> createState() => _JournalingViewPageState();
}

class _JournalingViewPageState extends State<JournalingViewPage> {

  var _journalTypeIndex = 0;
  var _showDate = true;

  void _performNavigation(void Function() navFunction) {
    final currentState = MyApp.state;
    navFunction();
    final newState = MyApp.state;
    // refresh UI by switching the state
    if (currentState != newState) {
      if (newState == Day()) _updateUI(0, true);
      if (newState == Week()) _updateUI(1);
      if (newState == Month()) _updateUI(2);
    }
  }

  void _updateUI([int? journalTypeIndex, bool showDate = false]) {
    _journalTypeIndex = journalTypeIndex!;
    _showDate = showDate;
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: _journalTypeIndex,
              children: [
                SingleChildScrollView(child: DayPlanningPage(rootPage: widget,)),
                SingleChildScrollView(child: WeekPlanningPage()),
                SingleChildScrollView(child: MonthPlanningPage())
              ],
            ),
          ),
          // SizedBox(height: 20,),
          Visibility(
            visible: !isKeyboardVisible,
              child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: 24, right: 16, left: 16, bottom: 16),
                child: Text(
                  'Ich bin nicht derjenige der entscheidet, ob ich erfolgreich bin oder nicht. Ich werde kämpfen und es beweisen',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(_showDate ? MyApp.date.MMMMEEEEd : ''),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () => setState(() => _performNavigation(
                          MyApp.state.performBackwardNavigation)),
                      icon: const Icon(Icons.arrow_back)),
                  IconButton(
                      onPressed: () => setState(() => _performNavigation(
                          MyApp.state.performForwardNavigation)),
                      icon: const Icon(Icons.arrow_forward)),
                ],
              )
            ],
          ))
        ],
      );
    });
  }
}