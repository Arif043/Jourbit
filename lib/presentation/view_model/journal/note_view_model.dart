import 'package:flutter/cupertino.dart';
import '../../../data/journal_repository.dart';

class NoteViewModel extends ChangeNotifier{

  final Future<List<String>?> Function() fetchData;
  final void Function(List<String>) updateEntries;
  late final List<TextEditingController> noteControllers;
  var _isDisposed = false;

  NoteViewModel(this.updateEntries, this.fetchData) {
    noteControllers = List.generate(6, (_) => TextEditingController());
  }

  void update() {
    updateEntries(noteControllers.map((ctlr) => ctlr.text).toList());
  }

  void initializeData() async {
    var data = await fetchData();
    for (int i = 0; i < noteControllers.length; i++) {
      if (!_isDisposed) {
        noteControllers[i].text = data?[i] ?? '';
      }
    }
    if (!_isDisposed) {
      notifyListeners();
    }
  }

  @override
  void dispose() {
    _isDisposed = true;
    for (var c in noteControllers) {
      c.dispose();
    }
    super.dispose();
  }

  factory NoteViewModel.createDailyGoalsViewModel(JournalRepository repository) => NoteViewModel(repository.updateDailyGoals, repository.fetchDailyGoals);
  factory NoteViewModel.createDailyInsightsViewModel(JournalRepository repository) => NoteViewModel(repository.updateDailyInsights, repository.fetchDailyInsights);
  factory NoteViewModel.createDailyOptimizationViewModel(JournalRepository repository) => NoteViewModel(repository.updateDailyOptimizations, repository.fetchDailyOptimizations);
  factory NoteViewModel.createDailyGratitudeViewModel(JournalRepository repository) => NoteViewModel(repository.updateDailyGratitudes, repository.fetchDailyGratitudes);
  factory NoteViewModel.createDailySuccessViewModel(JournalRepository repository) => NoteViewModel(repository.updateDailySuccess, repository.fetchDailySuccess);

  factory NoteViewModel.createWeeklySuccessViewModel(JournalRepository repository) => NoteViewModel(repository.updateWeeklySuccess, repository.fetchWeeklySuccess);
  factory NoteViewModel.createWeeklyGoalsViewModel(JournalRepository repository) => NoteViewModel(repository.updateWeeklyGoals, repository.fetchWeeklyGoals);

  factory NoteViewModel.createMonthlyGoalsViewModel(JournalRepository repository) => NoteViewModel(repository.updateMonthlyGoals, repository.fetchMonthlyGoals);
  factory NoteViewModel.createMonthlyEventsViewModel(JournalRepository repository) => NoteViewModel(repository.updateMonthlyEvents, repository.fetchMonthlyEvents);

  factory NoteViewModel.nullObject() => NoteViewModel((v){}, (){return Future.value();});
}