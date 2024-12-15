import 'package:jiffy/jiffy.dart';
import 'package:jourbit/data/day.dart';
import 'package:jourbit/data/journal_state.dart';
import 'package:jourbit/data/journaling_repository.dart';
import 'package:jourbit/data/month.dart';

import 'date_repository.dart';

class Week extends JournalState {

  static const _instance = Week._internal();

  const Week._internal();

  factory Week() => _instance;

  @override
  void performBackwardNavigation() {
    final repository = JournalingRepository();
    final now = repository.date.dateTime;
    if (now.weekday == 1)
      repository.date = Jiffy.parseFromDateTime(now.add(Duration(days: -1)));
    repository.state = Day();
  }

  @override
  void performForwardNavigation() {
    final repository = JournalingRepository();
    final now = repository.date.dateTime;

    // Switch to monthly review when reaching last day of current month
    if (DateRepository.isLastDayOfMonth(now)) {
      repository.state = Month();
    }
    else {
      if (now.weekday == 7)
        repository.date = Jiffy.parseFromDateTime(now.add(Duration(days: 1)));////////////
      repository.state = Day();
    }
  }
}