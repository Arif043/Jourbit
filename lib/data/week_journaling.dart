
import 'package:isar/isar.dart';

import 'happiness.dart';

part 'week_journaling.g.dart';

@collection
class WeekJournaling {

  Id id = Isar.autoIncrement;

  List<String>? weeklyGoals, weekOverview, successes;

  @enumerated
  List<WeeklyHappiness>? weekCheck;
}