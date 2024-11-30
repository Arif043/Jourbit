import 'package:jiffy/jiffy.dart';
import 'package:jourbit/main.dart';
import 'package:jourbit/service/month.dart';
import 'package:jourbit/service/state.dart';
import 'package:jourbit/service/week.dart';

class Day extends State {

  static const _instance = Day._internal();

  const Day._internal();

  factory Day() => _instance;

  @override
  void performForwardNavigation() {
    final now = MyApp.date.dateTime;
    // Sunday -> monday | switch to week
    if (now.weekday == 7) {
      MyApp.state = Week();
    }
    else if (isLastDayOfMonth(now)) {
      MyApp.state = Month();
    }
    else
      MyApp.date = Jiffy.parseFromDateTime(now.add(Duration(days: 1)));
  }

  @override
  void performBackwardNavigation() {
    final now = MyApp.date.dateTime;
    // Monday -> sunday | switch to week
    if (isLastDayOfMonth(now.add(Duration(days: -1)))) {
      MyApp.state = Month();
    }
    else if (now.weekday == 1) {
      MyApp.state = Week();
    }
    else
      MyApp.date = Jiffy.parseFromDateTime(now.add(Duration(days: -1)));
  }
}