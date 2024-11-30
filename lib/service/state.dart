abstract class State {

  const State();

  bool isLastDayOfMonth(DateTime date) {
    DateTime nextDay = date.add(Duration(days: 1));
    return nextDay.month != date.month;
  }

  void performForwardNavigation();
  void performBackwardNavigation();
}