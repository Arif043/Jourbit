import 'dart:developer';
import 'dart:math';

import 'package:flutter/services.dart';
import 'package:jiffy/jiffy.dart';
import 'package:jourbit/data/local_database_service.dart';
import 'enums.dart';
import 'model/day_journaling.dart';
import 'package:iso_calendar/iso_calendar.dart';
import 'model/month_journaling.dart';
import 'model/week_journaling.dart';

class JournalRepository {

  final datasource = LocalDatabaseService();
  var date = Jiffy.now();

  DateTime get dateTimeOfDay => DateTime(date.dateTime.year, date.dateTime.month, date.dateTime.day);
  String get wellFormattedDate => date.MMMMEEEEd;
  String get month => date.MMMM;
  int get year => date.year;

  int getWeekDay() {
    var dateTime = dateTimeOfDay;
    // Wenn der aktuelle Tag Montag ist, wird ein Tag zurückgerechnet damit in der Wochenreflexion die richtige Kalenderwoche angezeigt wird
    if (dateTime.weekday == 1) {
      dateTime = dateTime.add(const Duration(days: -1));
    }
    return IsoCalendar.fromDateTime(dateTime).weekNumber;
  }

  bool isLastDayOfMonth(DateTime date) {
    DateTime nextDay = date.add(const Duration(days: 1));
    return nextDay.month != date.month;
  }

  DailyHappiness getDailyHappiness(int index) {
    return DailyHappiness.values[index];
  }

  Future<String> fetchRandomCitate() async {
    final List<String> content = (await rootBundle.loadString('assets/citates/content.txt')).split('\n');
    return content[Random().nextInt(content.length)];
  }

  //////////  DayJournaling  //////////

  Future<void> updateDailyJournalField<T>(T value, void Function(DayJournaling, T) updateField) async {
    var updatingDailyJournal = await datasource.fetchDayJournal(dateTimeOfDay);
    updateField(updatingDailyJournal, value);
    datasource.saveDayJournal(updatingDailyJournal);
  }

  void updateDailyGoals(List<String> recentValues) async {
    await updateDailyJournalField<List<String>>(recentValues, (journal, value) => journal.dayGoals = value);
  }

  void updateDailyInsights(List<String> recentValues) async {
    await updateDailyJournalField<List<String>>(recentValues, (journal, value) => journal.insights = value);
  }

  void updateDailyOptimizations(List<String> recentValues) async {
    await updateDailyJournalField<List<String>>(recentValues, (journal, value) => journal.optimizations = value);
  }

  void updateDailyGratitudes(List<String> recentValues) async {
    await updateDailyJournalField<List<String>>(recentValues, (journal, value) => journal.gratitudes = value);
  }

  void updateDailySuccess(List<String> recentValues) async {
    await updateDailyJournalField<List<String>>(recentValues, (journal, value) => journal.successes = value);
  }

  void updateDailyIdeas(List<String> recentValues) async {
    await updateDailyJournalField<List<String>>(recentValues, (journal, value) => journal.ideas = value);
  }

  void updateDailyDayCheck(DailyHappiness recentValue) async {
    await updateDailyJournalField<DailyHappiness>(recentValue, (journal, value) => journal.dayCheck = value);
  }

  Future<List<String>?> fetchDailyGoals() async {
    return (await datasource.fetchDayJournal(dateTimeOfDay)).dayGoals;
  }

  Future<List<String>?> fetchDailyInsights() async {
    return (await datasource.fetchDayJournal(dateTimeOfDay)).insights;
  }

  Future<List<String>?> fetchDailyOptimizations() async {
    return (await datasource.fetchDayJournal(dateTimeOfDay)).optimizations;
  }

  Future<List<String>?> fetchDailyGratitudes() async {
    return (await datasource.fetchDayJournal(dateTimeOfDay)).gratitudes;
  }

  Future<List<String>?> fetchDailySuccess() async {
    return (await datasource.fetchDayJournal(dateTimeOfDay)).successes;
  }

  Future<DailyHappiness?> fetchDailyDayCheck() async {
    return (await datasource.fetchDayJournal(dateTimeOfDay)).dayCheck;
  }

  //////////  WeekJournaling  //////////

  Future<void> updateWeeklyJournalField<T>(T value, void Function(WeekJournaling, T) updateField) async {
    var updatingWeeklyJournal = await datasource.fetchWeekJournal(year, getWeekDay());
    updateField(updatingWeeklyJournal, value);
    datasource.saveWeekJournal(updatingWeeklyJournal);
  }

  void updateWeeklyGoals(List<String> recentValues) async {
    await updateWeeklyJournalField(recentValues, (journal, value) => journal.weeklyGoals = value);
  }

  void updateWeeklySuccess(List<String> recentValues) async {
    await updateWeeklyJournalField(recentValues, (journal, value) => journal.successes = value);
  }

  Future<List<String>?> fetchWeeklyGoals() async {
    return (await datasource.fetchWeekJournal(year, getWeekDay())).weeklyGoals;
  }

  Future<List<String>?> fetchWeeklySuccess() async {
    return (await datasource.fetchWeekJournal(year, getWeekDay())).successes;
  }

  //////////  MonthJournaling  //////////

  Future<void> updateMonthlyJournalField<T>(T value, void Function(MonthJournaling, T) updateField) async {
    var updatingMonthlyJournal = await datasource.fetchMonthJournal(year, month);
    updateField(updatingMonthlyJournal, value);
    datasource.saveMonthJournal(updatingMonthlyJournal);
  }

  void updateMonthlyGoals(List<String> recentValues) async {
    await updateMonthlyJournalField(recentValues, (journal, value) => journal.monthGoals = value);
  }

  void updateMonthlyEvents(List<String> recentValues) async {
    await updateMonthlyJournalField(recentValues, (journal, value) => journal.events = value);
  }

  Future<List<String>?> fetchMonthlyGoals() async {
    return (await datasource.fetchMonthJournal(year, month)).monthGoals;
  }

  Future<List<String>?> fetchMonthlyEvents() async {
    return (await datasource.fetchMonthJournal(year, month)).events;
  }
}