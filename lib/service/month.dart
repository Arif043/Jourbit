import 'package:jiffy/jiffy.dart';
import 'package:jourbit/service/day.dart';
import 'package:jourbit/service/state.dart';
import 'package:jourbit/service/week.dart';

import '../main.dart';

class Month extends State {

  static const _instance = Month._internal();

  const Month._internal();

  factory Month() => _instance;

  @override
  void performBackwardNavigation() {
    final now = MyApp.date.dateTime;
    //
    if (now.weekday == 1) {
      MyApp.state = Week();
    }
    else {
      MyApp.date = Jiffy.parseFromDateTime(now.add(const Duration(days: -1)));
      MyApp.state = Day();
    }
  }

  @override
  void performForwardNavigation() {
    final now = MyApp.date.dateTime;
    MyApp.date = Jiffy.parseFromDateTime(now.add(const Duration(days: 1)));
    MyApp.state = Day();
  }
}