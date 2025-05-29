import 'package:jourbit/data/journal_repository.dart';

abstract class JournalState {

  JournalState performForwardNavigation(JournalRepository repository);
  JournalState performBackwardNavigation(JournalRepository repository);

}