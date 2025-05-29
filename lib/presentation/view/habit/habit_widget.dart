import 'dart:ui';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jourbit/data/habit_repository.dart';
import 'package:jourbit/presentation/view_model/habit/habit_view_model.dart';

class HabitWidget extends StatefulWidget {

  final String name;
  final List<bool> loadedCheckBoxValues;
  final ValueChanged<String> onRemove;

  const HabitWidget({super.key, required this.name, required this.loadedCheckBoxValues, required this.onRemove});

  @override
  State<HabitWidget> createState() => _HabitWidgetState();
}

class _HabitWidgetState extends State<HabitWidget> {

  late HabitViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = HabitViewModel(widget.loadedCheckBoxValues, GetIt.I.get<HabitRepository>());
  }

  Widget _createDailyEntry(int index) {
    List<String> weekDays = context.tr('lang') == 'de_DE' ? viewModel.repository.germanDayNames : viewModel.repository.englishDayNames;
    return Column(
      children: [
        Text(weekDays[index], style: TextStyle(color: DateTime.now().weekday - 1 == index ? Colors.lightBlue : Colors.grey[850]),),
        Checkbox(value: viewModel.checkBoxValues[index], onChanged: (value) => setState(() {
          viewModel.toggle(index);
        }))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, left: 8, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(context.tr('delete_confirmation')),
                        content: Text.rich(
                          TextSpan(
                            text: '${widget.name} ',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text: '${context.tr('delete')}',
                                style: const TextStyle(fontWeight: FontWeight.normal)
                              )
                            ]
                          )
                        ),
                        actions: [
                          TextButton(
                              onPressed: Navigator.of(context).pop,
                              child: Text(context.tr('cancel'))),
                          TextButton(
                              onPressed: () async {
                                Navigator.of(context).pop();
                                widget.onRemove(widget.name);
                              },
                              child: Text(context.tr('delete_ok')))
                        ],
                      );
                    });
              },
            child: Container(
              color: Colors.transparent,
              child: Row(
                      children: [
                        Text(widget.name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                      ],
                      ),
            ),
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              const SizedBox(width: 10),
              _createDailyEntry(0),
              _createDailyEntry(1),
              _createDailyEntry(2),
              _createDailyEntry(3),
              _createDailyEntry(4),
              _createDailyEntry(5),
              _createDailyEntry(6)
            ],
          )
        ],
      ),
    );
  }
}