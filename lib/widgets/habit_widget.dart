import 'package:flutter/material.dart';

class HabitWidget extends StatefulWidget {

  final String name;
  final dayNames = const ['Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa', 'So'];

  const HabitWidget({super.key, required this.name});

  @override
  State<HabitWidget> createState() => _HabitWidgetState();
}

class _HabitWidgetState extends State<HabitWidget> {

  final checkBoxValues = List.filled(7, false);

  Widget _createDailyEntry(int index, List<bool> checkBoxValues) {
    final res = Column(
      children: [
        Text(widget.dayNames[index], style: TextStyle(color: DateTime.now().weekday - 1 == index ? Colors.lightBlue : Colors.grey[850]),),
        Checkbox(value: checkBoxValues[index], onChanged: (value) => setState(() => checkBoxValues[index] = value ?? false))
      ],
    );
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          SizedBox(height: 10,),
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