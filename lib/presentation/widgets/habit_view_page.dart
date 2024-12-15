import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:iso_calendar/iso_calendar.dart';
import 'package:jourbit/data/local_datasource.dart';
import 'package:jourbit/presentation/widgets/habit_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HabitViewPage extends StatefulWidget {

  static final datasource = LocalDatasource();

  const HabitViewPage({super.key});

  @override
  State<HabitViewPage> createState() => _HabitViewPageState();
}

class _HabitViewPageState extends State<HabitViewPage> with WidgetsBindingObserver {
  late final TextEditingController _habitNameController;
  late final List<HabitWidget> _habitList;

  @override
  void initState() {
    super.initState();

    _habitNameController = TextEditingController();
    _habitList = <HabitWidget>[];
    _initHabits();
    WidgetsBinding.instance.addObserver(this);
  }

  void _initHabits() async {
    final prefs = await SharedPreferences.getInstance();
    final currentWeekNumber = IsoCalendar.fromDateTime(DateTime.now()).weekNumber;
    final loadedWeekCount = prefs.getInt('weekCount') ?? currentWeekNumber;
    prefs.setInt('weekCount', currentWeekNumber);

    final habits = await HabitViewPage.datasource.fetchHabits();
    for (var habit in habits!) {
      final widget = HabitWidget(name: habit.name!, loadedCheckBoxValues: currentWeekNumber == loadedWeekCount ? habit.checkBoxValues : List.filled(7, false), onRemove: removeHabit,);
      _habitList.add(widget);
    }
    setState(() {});
  }

  void removeHabit(HabitWidget habit) {
    setState(() => _habitList.remove(habit));
  }

  @override
  void dispose() {
    _saveHabits();
    _habitNameController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      _saveHabits();
    }
  }

  void _saveHabits() {
    for (var widget in _habitList) {
      HabitViewPage.datasource.updateHabit(widget.name, widget.loadedCheckBoxValues!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                  onPressed: () => showDialog(context: context, builder: (context) => _showDialog(context)),
                  child: Text(context.tr('add_habit')),
                ),
              )),
          ..._habitList
        ],
      ),
    );
  }

  _showDialog(BuildContext context) => Dialog(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 250,
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _habitNameController,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: context.tr('empty_name')),
            ),
          ),
          SizedBox(
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(context.tr('cancel'), style: TextStyle(color: Colors.red[400]),
                    )),
                TextButton(
                    onPressed: () {
                      if (_habitNameController.value.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(context.tr('empty_name')),
                        ));
                        return;
                      }
                      if (_habitList.map((w) => w.name).contains(_habitNameController.value.text)) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(context.tr('duplicate_habit')),
                        ));
                        return;
                      }
                      setState(() {
                        _habitList.add(HabitWidget(name: _habitNameController.value.text, loadedCheckBoxValues: List.filled(7, false), onRemove: removeHabit,));
                        _habitNameController.clear();
                      });
                      Navigator.pop(context);
                    },
                    child: Text(context.tr('ok'), style: TextStyle(color: Colors.teal[400]),
                    ))
              ],
            ),
          )
        ],
      ),
    ),
  );

}