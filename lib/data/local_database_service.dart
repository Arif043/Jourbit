import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'model/day_journaling.dart';
import 'model/habit.dart';
import 'model/month_journaling.dart';
import 'model/week_journaling.dart';

class LocalDatabaseService {

  static final _instance = LocalDatabaseService._();
  Isar? isar;
  Directory? dir;

  LocalDatabaseService._();

  factory LocalDatabaseService() => _instance;

  void close() {
    isar?.close();
    isar = null;
  }

  Future<Isar?> _ensureDatabaseInitialized() async {
    if (isar != null) return isar;
    WidgetsFlutterBinding.ensureInitialized();
    dir = await getApplicationDocumentsDirectory();
    return isar = await Isar.open(
      [DayJournalingSchema, WeekJournalingSchema, MonthJournalingSchema, HabitSchema],
      directory: dir!.path,
    );
  }

  Future<DayJournaling> fetchDayJournal(DateTime day) async {
    await _ensureDatabaseInitialized();
    var res = await isar?.dayJournalings.where().dateEqualTo(day).findFirst();
    res ??= DayJournaling()..date = day;
    return res;
  }

  Future<WeekJournaling> fetchWeekJournal(int year, int weekNumber) async {
    await _ensureDatabaseInitialized();
    var res = await isar?.weekJournalings.where().yearWeekNumberEqualTo(year, weekNumber).findFirst();
    res ??= WeekJournaling()
      ..year = year
      ..weekNumber = weekNumber;
    return res;
  }

  Future<MonthJournaling> fetchMonthJournal(int year, String month) async {
    await _ensureDatabaseInitialized();
    var res = await isar?.monthJournalings.where().yearMonthEqualTo(year, month).findFirst();
    res ??= MonthJournaling()
      ..year = year
      ..month = month;
    return res;
  }

  void saveDayJournal(DayJournaling journal) async {
    await isar?.writeTxn(() async {
      await isar?.dayJournalings.put(journal);
    });
  }

  void saveWeekJournal(WeekJournaling journal) async {
    await isar?.writeTxn(() async {
      await isar?.weekJournalings.put(journal);
    });
  }

  void saveMonthJournal(MonthJournaling journal) async {
    await isar?.writeTxn(() async {
      await isar?.monthJournalings.put(journal);
    });
  }

  //////////  Habit //////////

  Future<List<Habit>?> fetchHabits() async {
    await _ensureDatabaseInitialized();
    return await isar?.habits.where().findAll();
  }

  void updateHabit(String name, List<bool> checkBoxValues) async {
    var habitEntry = await isar?.habits.filter().nameEqualTo(name).findFirst();
    habitEntry ??= Habit()..name = name;
    habitEntry.checkBoxValues = checkBoxValues;
    await isar?.writeTxn(() async {
      await isar?.habits.put(habitEntry!);
    });
  }

  Future<void> removeHabit(String name) async {
    var habit = await isar?.habits.filter().nameEqualTo(name).findFirst();
    if (habit != null) {
      await isar?.writeTxn(() async {
        await isar?.habits.where().nameEqualTo(name).deleteAll();
      });
    }
  }
}