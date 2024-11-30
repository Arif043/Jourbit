import 'package:jiffy/jiffy.dart';
import 'package:jourbit/main.dart';
import 'package:jourbit/service/day.dart';
import 'package:jourbit/service/month.dart';
import 'package:jourbit/service/state.dart';

class Week extends State {

  static const _instance = Week._internal();

  const Week._internal();

  factory Week() => _instance;

  @override
  void performBackwardNavigation() {
    final now = MyApp.date.dateTime;
    MyApp.date = Jiffy.parseFromDateTime(now.add(Duration(days: -1)));
    MyApp.state = Day();
  }

  @override
  void performForwardNavigation() {
    final now = MyApp.date.dateTime;

    // Switch to monthly review when reaching last day of current month
    if (isLastDayOfMonth(now)) {
      MyApp.state = Month();
    }
    else {
      MyApp.date = Jiffy.parseFromDateTime(now.add(Duration(days: 1)));
      MyApp.state = Day();
    }
  }
}