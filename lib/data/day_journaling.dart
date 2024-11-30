
import 'package:isar/isar.dart';
import 'package:jourbit/data/happiness.dart';

part 'day_journaling.g.dart';

@collection
class DayJournaling {

  // Eigentlich könnte man DateTime als Schlüssel verwenden
  Id id = Isar.autoIncrement;

  List<String>? dayGoals, insights, optimizations, gratitudes, successes, ideas;

  DateTime? date;

  @enumerated
  late DailyHappiness dayCheck;
}