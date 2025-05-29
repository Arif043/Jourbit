import '../../../data/habit_repository.dart';

class HabitViewModel {

  final List<bool> checkBoxValues;
  final HabitRepository repository;

  HabitViewModel(this.checkBoxValues, this.repository);

  void toggle(int index) {
    checkBoxValues[index] = !checkBoxValues[index];
  }
}