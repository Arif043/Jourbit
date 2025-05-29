import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:jourbit/data/habit_repository.dart';
import '../../../data/model/habit.dart';

class HabitViewPageViewModel extends ChangeNotifier {

  final TextEditingController habitNameController = TextEditingController();
  final List<Habit> habitList = <Habit>[];
  final HabitRepository repository;
  var _initialized = false;
  bool get isNewHabitNameFieldEmpty => habitNameController.text.isEmpty;
  bool get habitAlreadyExists => habitList.map((h) => h.name).contains(habitNameController.text);

  HabitViewPageViewModel(this.repository);

  void initHabits() async {
    if (_initialized)
      return;

    final (currentWeekNumber, loadedWeekCount) = await repository.fetchWeekNumber();

    final habits = await repository.fetchHabits();
    for (var habit in habits!) {
      if (currentWeekNumber != loadedWeekCount) {
        habit.checkBoxValues = List.filled(7, false);
      }
      habitList.add(habit);
    }
    notifyListeners();
    _initialized = true;
  }

  void saveHabits() {
    for (var h in habitList) {
      repository.saveHabit(h.name!, h.checkBoxValues!);
    }
  }

  void addNewHabit() {
    final newHabit = Habit()
      ..name = habitNameController.text
      ..checkBoxValues = List.filled(7, false);
    habitList.add(newHabit);
    habitNameController.clear();
    repository.saveHabit(newHabit.name!, newHabit.checkBoxValues!);
    notifyListeners();
  }

  void removeHabit(String habitName) {
    repository.removeHabit(habitName);
    habitList.removeWhere((h) => h.name == habitName);
    notifyListeners();
  }


  @override
  void dispose() {
    habitNameController.dispose();
    super.dispose();
  }
}