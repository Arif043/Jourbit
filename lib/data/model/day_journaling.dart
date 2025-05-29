
import 'package:isar/isar.dart';
import '../enums.dart';

part 'day_journaling.g.dart';

@collection
class DayJournaling {

  Id id = Isar.autoIncrement;

  List<String>? dayGoals, insights, optimizations, gratitudes, successes, ideas;

  @Index()
  DateTime? date;

  @Enumerated(EnumType.ordinal32)
  DailyHappiness? dayCheck;
}