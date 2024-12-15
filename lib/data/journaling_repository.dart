import 'dart:developer';

import 'package:jiffy/jiffy.dart';
import 'package:jourbit/data/date_repository.dart';
import 'package:jourbit/data/day.dart';
import 'package:jourbit/data/journal_state.dart';
import 'package:jourbit/data/local_datasource.dart';
import 'package:jourbit/data/models/week_journaling.dart';

import 'models/day_journaling.dart';
import 'models/enums.dart';
import 'models/month_journaling.dart';


class JournalingRepository {

  static final _instance = JournalingRepository._();

  final datasource = LocalDatasource();
  var date = Jiffy.now();
  JournalState state = Day();
  String get wellFormattedDate => date.MMMMEEEEd;
  String get month => DateRepository.getMonth(date);
  int get year => DateRepository.getYear(date);
  int get weekDay => DateRepository.getWeekDay(date);
  JournalingRepository._();

  factory JournalingRepository() => _instance;


  //////////  DayJournaling  //////////

  Future<void> updateDailyJournalField<T>(T value, void Function(DayJournaling, T) updateField) async {
    var updatingDailyJournal = await datasource.fetchDayJournal(DateRepository.dateTimeOfDay(date));
    updateField(updatingDailyJournal, value);
    datasource.saveDayJournal(updatingDailyJournal);
  }

  void updateDailyGoals(List<String> recentValues) async {
    log("update", name: 'daily.goals');
    await updateDailyJournalField<List<String>>(recentValues, (journal, value) => journal.dayGoals = value);
  }

  void updateDailyInsights(List<String> recentValues) async {
    log("update", name: 'daily.insights');
    await updateDailyJournalField<List<String>>(recentValues, (journal, value) => journal.insights = value);
  }

  void updateDailyOptimizations(List<String> recentValues) async {
    log("update", name: 'daily.optimizations');
    await updateDailyJournalField<List<String>>(recentValues, (journal, value) => journal.optimizations = value);
  }

  void updateDailyGratitudes(List<String> recentValues) async {
    log("update", name: 'daily.gratitudes');
    await updateDailyJournalField<List<String>>(recentValues, (journal, value) => journal.gratitudes = value);
  }

  void updateDailySuccess(List<String> recentValues) async {
    log("update", name: 'daily.success');
    await updateDailyJournalField<List<String>>(recentValues, (journal, value) => journal.successes = value);
  }

  void updateDailyIdeas(List<String> recentValues) async {
    log("update", name: 'daily.ideas');
    await updateDailyJournalField<List<String>>(recentValues, (journal, value) => journal.ideas = value);
  }

  void updateDailyDayCheck(DailyHappiness recentValue) async {
    log("update", name: 'daily.check');
    await updateDailyJournalField<DailyHappiness>(recentValue, (journal, value) => journal.dayCheck = value);
  }

  Future<List<String>?> fetchDailyGoals() async {
    log("fetch", name: 'daily.goals');
    return (await datasource.fetchDayJournal(DateRepository.dateTimeOfDay(date))).dayGoals;
  }

  Future<List<String>?> fetchDailyInsights() async {
    log("fetch", name: 'daily.insights');
    return (await datasource.fetchDayJournal(DateRepository.dateTimeOfDay(date))).insights;
  }

  Future<List<String>?> fetchDailyOptimizations() async {
    log("fetch", name: 'daily.optimizations');
    return (await datasource.fetchDayJournal(DateRepository.dateTimeOfDay(date))).optimizations;
  }

  Future<List<String>?> fetchDailyGratitudes() async {
    log("fetch", name: 'daily.gratitudes');
    return (await datasource.fetchDayJournal(DateRepository.dateTimeOfDay(date))).gratitudes;
  }

  Future<List<String>?> fetchDailySuccess() async {
    log("fetch", name: 'daily.success');
    return (await datasource.fetchDayJournal(DateRepository.dateTimeOfDay(date))).successes;
  }

  Future<DailyHappiness?> fetchDailyDayCheck() async {
    log("fetch", name: 'daily.check');
    return (await datasource.fetchDayJournal(DateRepository.dateTimeOfDay(date))).dayCheck;
  }

  //////////  WeekJournaling  //////////

  Future<void> updateWeeklyJournalField<T>(T value, void Function(WeekJournaling, T) updateField) async {
    var updatingWeeklyJournal = await datasource.fetchWeekJournal(DateRepository.getYear(date), DateRepository.getWeekDay(date));
    updateField(updatingWeeklyJournal, value);
    datasource.saveWeekJournal(updatingWeeklyJournal);
  }

  void updateWeeklyGoals(List<String> recentValues) async {
    log("update", name: 'weekly.goals');
    await updateWeeklyJournalField(recentValues, (journal, value) => journal.weeklyGoals = value);
  }

  void updateWeeklySuccess(List<String> recentValues) async {
    log("update", name: 'weekly.success');
    await updateWeeklyJournalField(recentValues, (journal, value) => journal.successes = value);
  }

  Future<List<String>?> fetchWeeklyGoals() async {
    log("fetch", name: 'weekly.goals');
    return (await datasource.fetchWeekJournal(DateRepository.getYear(date), DateRepository.getWeekDay(date))).weeklyGoals;
  }

  Future<List<String>?> fetchWeeklySuccess() async {
    log("fetch", name: 'weekly.success');
    return (await datasource.fetchWeekJournal(DateRepository.getYear(date), DateRepository.getWeekDay(date))).successes;
  }

  //////////  MonthJournaling  //////////

  Future<void> updateMonthlyJournalField<T>(T value, void Function(MonthJournaling, T) updateField) async {
    var updatingMonthlyJournal = await datasource.fetchMonthJournal(DateRepository.getYear(date), DateRepository.getMonth(date));
    updateField(updatingMonthlyJournal, value);
    datasource.saveMonthJournal(updatingMonthlyJournal);
  }

  void updateMonthlyGoals(List<String> recentValues) async {
    log("update", name: 'month.goals');
    await updateMonthlyJournalField(recentValues, (journal, value) => journal.monthGoals = value);
  }

  void updateMonthlyEvents(List<String> recentValues) async {
    log("update", name: 'month.events');
    await updateMonthlyJournalField(recentValues, (journal, value) => journal.events = value);
  }

  Future<List<String>?> fetchMonthlyGoals() async {
    log("fetch", name: 'monthly.goals');
    return (await datasource.fetchMonthJournal(DateRepository.getYear(date), DateRepository.getMonth(date))).monthGoals;
  }

  Future<List<String>?> fetchMonthlyEvents() async {
    log("fetch", name: 'monthly.events');
    return (await datasource.fetchMonthJournal(DateRepository.getYear(date), DateRepository.getMonth(date))).events;
  }
}