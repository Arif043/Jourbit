import 'package:jourbit/data/journaling_repository.dart';

class NoteViewModel {

  static final _repository = JournalingRepository();

  final Future<List<String>?> Function() fetchData;
  final void Function(List<String>) updateEntries;

  NoteViewModel(this.updateEntries, this.fetchData);

  factory NoteViewModel.createDailyGoalsViewModel() => NoteViewModel(_repository.updateDailyGoals, _repository.fetchDailyGoals);
  factory NoteViewModel.createDailyInsightsViewModel() => NoteViewModel(_repository.updateDailyInsights, _repository.fetchDailyInsights);
  factory NoteViewModel.createDailyOptimizationViewModel() => NoteViewModel(_repository.updateDailyOptimizations, _repository.fetchDailyOptimizations);
  factory NoteViewModel.createDailyGratitudeViewModel() => NoteViewModel(_repository.updateDailyGratitudes, _repository.fetchDailyGratitudes);
  factory NoteViewModel.createDailySuccessViewModel() => NoteViewModel(_repository.updateDailySuccess, _repository.fetchDailySuccess);

  factory NoteViewModel.createWeeklySuccessViewModel() => NoteViewModel(_repository.updateWeeklySuccess, _repository.fetchWeeklySuccess);
  factory NoteViewModel.createWeeklyGoalsViewModel() => NoteViewModel(_repository.updateWeeklyGoals, _repository.fetchWeeklyGoals);

  factory NoteViewModel.createMonthlyGoalsViewModel() => NoteViewModel(_repository.updateMonthlyGoals, _repository.fetchMonthlyGoals);
  factory NoteViewModel.createMonthlyEventsViewModel() => NoteViewModel(_repository.updateMonthlyEvents, _repository.fetchMonthlyEvents);

  factory NoteViewModel.nullObject() => NoteViewModel((v){}, (){return Future.value();});

}