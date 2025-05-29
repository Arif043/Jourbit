import 'package:flutter/foundation.dart';
import 'package:jourbit/data/journal_repository.dart';

import '../../../data/enums.dart';

class DayPlanningPageViewModel extends ChangeNotifier {

  DailyHappiness? selectedHappiness;
  final JournalRepository repository;

  DayPlanningPageViewModel(this.repository);

  void initHappinessButtons() async {
    selectedHappiness = await repository.fetchDailyDayCheck();
    notifyListeners();

    DailyHappiness.values[2];
  }

  void setHappiness(int happinessIndex) {
    selectedHappiness = repository.getDailyHappiness(happinessIndex);
    repository.updateDailyDayCheck(selectedHappiness!);
    notifyListeners();
  }

  bool isCurrentButton(int happinessIndex) {
    return selectedHappiness != null ? DailyHappiness.values.indexOf(selectedHappiness!) == happinessIndex : false;
  }
}