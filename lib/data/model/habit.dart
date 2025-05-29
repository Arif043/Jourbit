
import 'package:isar/isar.dart';

part 'habit.g.dart';

@collection
class Habit {

  Id id = Isar.autoIncrement;

  @Index()
  String? name;

  List<bool>? checkBoxValues;
}