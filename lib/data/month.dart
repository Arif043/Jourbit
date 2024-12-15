import 'package:jiffy/jiffy.dart';
import 'package:jourbit/data/day.dart';
import 'package:jourbit/data/journal_state.dart';
import 'package:jourbit/data/journaling_repository.dart';
import 'package:jourbit/data/week.dart';

import 'date_repository.dart';

class Month extends JournalState {

  static const _instance = Month._internal();

  const Month._internal();

  factory Month() => _instance;

  @override
  void performBackwardNavigation() {
    final repository = JournalingRepository();
    final now = repository.date.dateTime;
    //
    if (now.weekday == 1) {
      repository.state = Week();
    }
    else {
      if (!DateRepository.isLastDayOfMonth(now))
        repository.date = Jiffy.parseFromDateTime(now.add(const Duration(days: -1)));
      repository.state = Day();
    }
  }

  @override
  void performForwardNavigation() {
    final repository = JournalingRepository();
    final now = repository.date.dateTime;
    if (DateRepository.isLastDayOfMonth(now))
      repository.date = Jiffy.parseFromDateTime(now.add(const Duration(days: 1)));
    repository.state = Day();
  }
}