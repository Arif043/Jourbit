import 'package:jiffy/jiffy.dart';
import 'package:jourbit/data/journal_state.dart';
import 'package:jourbit/data/journaling_repository.dart';
import 'package:jourbit/data/month.dart';
import 'package:jourbit/data/week.dart';

import 'date_repository.dart';

class Day implements JournalState {

  static const _instance = Day._internal();

  const Day._internal();

  factory Day() => _instance;

  @override
  void performForwardNavigation() {
    final repository = JournalingRepository();
    final now = repository.date.dateTime;
    // Sunday -> monday | switch to week
    if (now.weekday == 7) {
      repository.state = Week();
    }
    else if (DateRepository.isLastDayOfMonth(now)) {
      repository.state = Month();
    }
    else
      repository.date = Jiffy.parseFromDateTime(now.add(Duration(days: 1)));
  }

  @override
  void performBackwardNavigation() {
    final repository = JournalingRepository();
    final now = repository.date.dateTime;
    // Monday -> sunday | switch to week
    if (DateRepository.isLastDayOfMonth(now.add(Duration(days: -1)))) {
      repository.state = Month();
    }
    else if (now.weekday == 1) {
      repository.state = Week();
    }
    else
      repository.date = Jiffy.parseFromDateTime(now.add(Duration(days: -1)));
  }
}