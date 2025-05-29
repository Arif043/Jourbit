import 'package:jiffy/jiffy.dart';

import '../../data/journal_repository.dart';
import 'day.dart';
import 'journal_state.dart';
import 'month.dart';

class Week implements JournalState {

  static const _instance = Week._internal();

  const Week._internal();

  factory Week() => _instance;

  @override
  JournalState performBackwardNavigation(JournalRepository repository) {
    final now = repository.dateTimeOfDay;
    if (now.weekday == 1) {
      repository.date = Jiffy.parseFromDateTime(now.add(const Duration(days: -1)));
    }
    return Day();
  }

  @override
  JournalState performForwardNavigation(JournalRepository repository) {
    final now = repository.date.dateTime;

    // Switch to monthly review when reaching last day of current month
    if (repository.isLastDayOfMonth(now)) {
      return Month();
    }
    else {
      if (now.weekday == 7) {
        repository.date = Jiffy.parseFromDateTime(now.add(const Duration(days: 1)));////////////
      }
      return Day();
    }
  }
}