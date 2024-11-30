
import 'dart:io';

import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'data/day_journaling.dart';
import 'data/month_journaling.dart';
import 'data/week_journaling.dart';

late final Isar isar;
late final Directory dir;

void initDatabase() async {
  dir = await getApplicationDocumentsDirectory();
  isar = await Isar.open(
    [DayJournalingSchema, WeekJournalingSchema, MonthJournalingSchema],
    directory: dir.path,
  );


}