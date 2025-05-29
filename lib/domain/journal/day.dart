import 'package:jiffy/jiffy.dart';
import 'package:jourbit/data/journal_repository.dart';
import 'package:jourbit/domain/journal/week.dart';
import 'journal_state.dart';
import 'month.dart';

class Day implements JournalState {

  static final _instance = Day._internal();

  Day._internal();

  factory Day() => _instance;

  @override
  JournalState performForwardNavigation(JournalRepository repository) {
    final now = repository.dateTimeOfDay;
    // Sunday -> monday | switch to week
    if (now.weekday == 7) {
      return Week();
    }
    else if (repository.isLastDayOfMonth(now)) {
      return Month();
    }
    else {
      repository.date = Jiffy.parseFromDateTime(now.add(const Duration(days: 1)));
      return Day();
    }
  }

  @override
  JournalState performBackwardNavigation(JournalRepository repository) {
    final now = repository.date.dateTime;
    if (repository.isLastDayOfMonth(now.add(const Duration(days: -1)))) {
      return Month();
    }
    // Monday -> sunday | switch to week
    else if (now.weekday == 1) {
      return Week();
    }
    else {
      repository.date = Jiffy.parseFromDateTime(now.add(const Duration(days: -1)));
      return Day();
    }
  }
}