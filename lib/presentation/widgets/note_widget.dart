import 'package:flutter/material.dart';

import '../view_models/note_viewmodel.dart';

class NoteWidget extends StatefulWidget {

  final String title, subtitle;
  final bool highlight;
  final Color _primaryColor, _seconderyColor;
  final NoteViewModel viewModel;

  NoteWidget({super.key, required this.title, required this.subtitle, required this.viewModel, this.highlight = true})
  : _primaryColor = highlight ? Colors.orange[800]! : Colors.black,
    _seconderyColor = highlight ? Colors.orangeAccent[100]! : Colors.transparent;

  @override
  State<NoteWidget> createState() => _NoteWidgetState();
}

class _NoteWidgetState extends State<NoteWidget> {

  late final List<TextEditingController> _noteControllers;

  @override
  void initState() {
    super.initState();
    _noteControllers = List.generate(6, (_) => TextEditingController());
    _initializeData();
  }

  @override
  void dispose() {
    super.dispose();
    for (var controller in _noteControllers) {
      controller.dispose();
    }
  }

  void _initializeData() async {
    var data = await widget.viewModel.fetchData();
    for (int i = 0; i < _noteControllers.length; i++) {
      if (mounted) {
        setState(() => _noteControllers[i].text = data?[i] ?? '');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: Column(
        children: [
          Container(
            color: widget._seconderyColor,
            child: ListTile(
              title: Text(widget.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: widget._primaryColor)),
              subtitle: Text(widget.subtitle, style: TextStyle(color: widget._primaryColor)),
            ),
          ),
          for (int i = 0; i < 6; i++)
            Padding(
              padding: const EdgeInsets.only(top: 16, right: 8, left: 8),
              child: Row(
                children: [
                  if (widget.highlight)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: widget._seconderyColor,
                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        child: Text((i+1).toString(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: widget._primaryColor)),
                      ),
                    ),
                  Flexible(
                    child: TextField(
                      onChanged: (_) => widget.viewModel.updateEntries(_noteControllers.map((ctlr) => ctlr.text).toList()),
                      controller: _noteControllers[i],
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red, width: 2)
                          )
                      ),
                    ),
                  )
                ],
              )
            )
        ],
      ),
    );
  }
}