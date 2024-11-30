import 'package:flutter/material.dart';

import '../widgets/habit_widget.dart';

class HabitViewPage extends StatefulWidget {
  const HabitViewPage({super.key});

  @override
  State<HabitViewPage> createState() => _HabitViewPageState();
}

class _HabitViewPageState extends State<HabitViewPage> {
  final _habitNameController = TextEditingController();
  final _habitList = <HabitWidget>[];

  @override
  void dispose() {
    _habitNameController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                  onPressed: () {
                    showMenu(
                      context: context,
                      position: const RelativeRect.fromLTRB(100, 75, 0, 0), // Menüposition
                      items: [
                        PopupMenuItem(
                          value: 'AddHabit',
                          child: const Text('Habit hinzufügen'),
                        ),
                        PopupMenuItem(
                          value: 'Option2',
                          child: const Text('Option 2'),
                        ),
                        PopupMenuItem(
                          value: 'Option3',
                          child: const Text('Option 3'),
                        ),
                      ],
                    ).then((value) {
                      switch (value) {
                        case 'AddHabit':
                          showDialog(context: context, builder: (context) => _addHabitDialog(context));
                      }
                    });
                  },
                  icon: Icon(Icons.add))),
          ..._habitList
        ],
      ),
    );
  }

  _addHabitDialog(BuildContext context) => Dialog(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 250,
            padding: EdgeInsets.all(16.0),
            child: TextField(
              controller: _habitNameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Habitname eingeben'),
            ),
          ),
          SizedBox(
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('Abbrechen', style: TextStyle(color: Colors.red[400]),
                    )),
                TextButton(
                    onPressed: () {
                      if (_habitNameController.value.text.isNotEmpty) {
                        setState(() {
                          _habitList.add(HabitWidget(name: _habitNameController.value.text));
                          _habitNameController.clear();
                        });
                        Navigator.pop(context);
                      }
                    },
                    child: Text('Ok', style: TextStyle(color: Colors.teal[400]),
                    ))
              ],
            ),
          )
        ],
      ),
    ),
  );

}