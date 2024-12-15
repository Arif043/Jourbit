import 'package:iso_calendar/iso_calendar.dart';
import 'package:jiffy/jiffy.dart';

class DateRepository {

  static const germanDayNames = ['Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa', 'So'];
  static const englishDayNames = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  static DateTime dateTimeOfDay(Jiffy date) => DateTime(date.dateTime.year, date.dateTime.month, date.dateTime.day);

  static int getWeekDay(Jiffy today) {
    var date = dateTimeOfDay(today);
    // Wenn der aktuelle Tag Montag ist, wird ein Tag zurückgerechnet damit in der Wochenreflexion die richtige Kalenderwoche angezeigt wird
    if (date.weekday == 1) {
      date = date.add(Duration(days: -1));
    }
    return IsoCalendar.fromDateTime(date).weekNumber;
  }

  static bool isLastDayOfMonth(DateTime date) {
    DateTime nextDay = date.add(const Duration(days: 1));
    return nextDay.month != date.month;
  }
  
  static String getMonth(Jiffy today) {
    return today.MMMM;
  }

  static int getYear(Jiffy today) {
    return today.year;
  }
}