
import 'package:isar/isar.dart';

part 'month_journaling.g.dart';

@collection
class MonthJournaling {

  Id id = Isar.autoIncrement;

  List<String>? monthGoals, events, monthOverview;

  @Index(composite: [CompositeIndex('month')])
  int? year;

  @Index()
  String? month;
}