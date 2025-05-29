import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:jourbit/presentation/view_model/habit/habit_view_page_view_model.dart';
import 'package:provider/provider.dart';
import 'habit_widget.dart';

class HabitViewPage extends StatefulWidget {

  const HabitViewPage({super.key});

  @override
  State<HabitViewPage> createState() => _HabitViewPageState();
}

class _HabitViewPageState extends State<HabitViewPage> with WidgetsBindingObserver {

  @override
  void initState() {
    super.initState();
    Future.microtask(() => Provider.of<HabitViewPageViewModel>(context, listen: false).initHabits());
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      Provider.of<HabitViewPageViewModel>(context, listen: false).saveHabits();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                onPressed: () => showDialog(context: context, builder: (c) => _showDialog(context)),
                child: Text(context.tr('add_habit')),
              ),
            )),
        Consumer<HabitViewPageViewModel>(
          builder: (_, viewModel, __) => Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: viewModel.habitList.length,
              itemBuilder: (context, index) =>
                HabitWidget(name: viewModel.habitList[index].name!, loadedCheckBoxValues: viewModel.habitList[index].checkBoxValues!, onRemove: viewModel.removeHabit,),
            ),
          )
        )
      ],
    );
  }

  Dialog _showDialog(BuildContext context) => Dialog(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 250,
            padding: const EdgeInsets.all(16.0),
            child: Consumer<HabitViewPageViewModel>(
              builder: (_, viewModel, __) => TextField(
                controller: viewModel.habitNameController..text = '',
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: context.tr('empty_name')),
              ),
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
                Consumer<HabitViewPageViewModel>(
                  builder: (_, viewModel, child) => TextButton(
                      onPressed: () {
                        if (viewModel.isNewHabitNameFieldEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(context.tr('empty_name')),
                          ));
                          return;
                        }
                        if (viewModel.habitAlreadyExists) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(context.tr('duplicate_habit')),backgroundColor: Colors.red,
                          ));
                          return;
                        }
                        Navigator.pop(context);
                        viewModel.addNewHabit();
                      },
                      child: child!,
                      ),
                    child: Text(context.tr('ok'), style: TextStyle(color: Colors.teal[400]),),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}