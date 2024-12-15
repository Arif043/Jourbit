import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:jourbit/data/local_datasource.dart';

import '../../data/date_repository.dart';

class HabitWidget extends StatefulWidget {

  final String name;
  final List<bool>? loadedCheckBoxValues;
  final void Function(HabitWidget) onRemove;

  const HabitWidget({super.key, required this.name, this.loadedCheckBoxValues, required this.onRemove});

  @override
  State<HabitWidget> createState() => _HabitWidgetState();

}

class _HabitWidgetState extends State<HabitWidget> {

  late List<bool> checkBoxValues;

  @override
  void initState() {
    super.initState();
    if (widget.loadedCheckBoxValues != null) {
      checkBoxValues = widget.loadedCheckBoxValues!;
    }
    else {
      checkBoxValues = List.filled(7, false);
    }
  }

  Widget _createDailyEntry(int index, List<bool> checkBoxValues) {
    List<String> weekDays = context.tr('lang') == 'de' ? DateRepository.germanDayNames : DateRepository.englishDayNames;
    return Column(
      children: [
        Text(weekDays[index], style: TextStyle(color: DateTime.now().weekday - 1 == index ? Colors.lightBlue : Colors.grey[850]),),
        Checkbox(value: checkBoxValues[index], onChanged: (value) => setState(() {
          checkBoxValues[index] = value ?? false;
          for (int i = 0; i < widget.loadedCheckBoxValues!.length; i++) {
            widget.loadedCheckBoxValues?[i] = checkBoxValues[i];
          }

        }))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
                            text: widget.name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text: ' ${context.tr('delete')}',
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
                                await LocalDatasource().removeHabit(widget.name);
                                widget.onRemove(widget);
                                Navigator.of(context).pop();
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
              _createDailyEntry(0, checkBoxValues),
              _createDailyEntry(1, checkBoxValues),
              _createDailyEntry(2, checkBoxValues),
              _createDailyEntry(3, checkBoxValues),
              _createDailyEntry(4, checkBoxValues),
              _createDailyEntry(5, checkBoxValues),
              _createDailyEntry(6, checkBoxValues)
            ],
          )
        ],
      ),
    );
  }
}