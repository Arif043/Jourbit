
import 'package:isar/isar.dart';
import '../enums.dart';

part 'week_journaling.g.dart';

@collection
class WeekJournaling {

  Id id = Isar.autoIncrement;

  List<String>? weeklyGoals, weekOverview, successes;

  @Index(composite: [CompositeIndex('weekNumber')])
  int? year;

  @Index()
  int? weekNumber;

  @enumerated
  List<WeeklyHappiness>? weekCheck;
}