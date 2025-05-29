import 'package:jiffy/jiffy.dart';
import 'package:jourbit/data/journal_repository.dart';
import 'package:jourbit/domain/journal/week.dart';
import 'day.dart';
import 'journal_state.dart';

class Month implements JournalState {

  static const _instance = Month._internal();

  const Month._internal();

  factory Month() => _instance;

  @override
  JournalState performBackwardNavigation(JournalRepository repository) {
    final now = repository.date.dateTime;
    if (now.weekday == 1) {
      return Week();
    }
    else {
      if (!repository.isLastDayOfMonth(now)) {
        repository.date = Jiffy.parseFromDateTime(now.add(const Duration(days: -1)));
      }
      return Day();
    }
  }

  @override
  JournalState performForwardNavigation(JournalRepository repository) {
    final now = repository.date.dateTime;
    if (repository.isLastDayOfMonth(now)) {
      repository.date = Jiffy.parseFromDateTime(now.add(const Duration(days: 1)));
    }
    return Day();
  }
}