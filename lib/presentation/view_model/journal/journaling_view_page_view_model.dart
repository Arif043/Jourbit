import 'package:flutter/foundation.dart';

import '../../../data/journal_repository.dart';
import '../../../domain/journal/day.dart';
import '../../../domain/journal/journal_state.dart';
import '../../../domain/journal/month.dart';
import '../../../domain/journal/week.dart';

class JournalingViewPageViewModel extends ChangeNotifier {

  JournalState state = Day();
  final JournalRepository repository;
  var journalingType = 0;
  String citate = '';

  JournalingViewPageViewModel(this.repository);

  Future<void> fetchRandomCitate() async {
    citate = await repository.fetchRandomCitate();
    notifyListeners();
  }

  void performBackwardNavigation() async {
    state = state.performBackwardNavigation(repository);
    if (state is Day) {
      journalingType = 0;
    }
    else if (state is Week) {
      journalingType = 1;
    }
    else if (state is Month) {
      journalingType = 2;
    }
    notifyListeners();
  }

  void performForwardNavigation() async {
    state = state.performForwardNavigation(repository);
    if (state is Day) {
      journalingType = 0;
    }
    else if (state is Week) {
      journalingType = 1;
    }
    else if (state is Month) {
      journalingType = 2;
    }
    notifyListeners();
  }
}