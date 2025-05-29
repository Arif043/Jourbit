import 'package:iso_calendar/iso_calendar.dart';
import 'package:jiffy/jiffy.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'local_database_service.dart';
import 'model/habit.dart';

class HabitRepository {

  final datasource = LocalDatabaseService();
  final germanDayNames = ['Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa', 'So'];
  final englishDayNames = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  static DateTime dateTimeOfDay(Jiffy date) => DateTime(date.dateTime.year, date.dateTime.month, date.dateTime.day);

  Future<List<Habit>?> fetchHabits() => datasource.fetchHabits();

  void saveHabit(String name, List<bool> checkBoxValues) async {
    datasource.updateHabit(name, checkBoxValues);
  }

  Future<void> removeHabit(String name) => datasource.removeHabit(name);

  Future<(int currentWeekNumber, int loadedWeekCount)> fetchWeekNumber() async {
    final prefs = await SharedPreferences.getInstance();
    final currentWeekNumber = IsoCalendar.fromDateTime(DateTime.now()).weekNumber;
    final loadedWeekCount = prefs.getInt('weekCount') ?? currentWeekNumber;
    prefs.setInt('weekCount', currentWeekNumber);
    return (currentWeekNumber, loadedWeekCount);
  }
}