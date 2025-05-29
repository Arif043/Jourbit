import 'package:flutter/material.dart';
import 'package:jourbit/presentation/view_model/journal/note_view_model.dart';
import 'package:provider/provider.dart';


class NoteWidget extends StatefulWidget {

  final String title, subtitle;
  final bool highlight;
  final Color _primaryColor, _seconderyColor;

  NoteWidget({super.key, required this.title, required this.subtitle, this.highlight = true})
  : _primaryColor = highlight ? Colors.orange[800]! : Colors.black,
    _seconderyColor = highlight ? Colors.orangeAccent[100]! : Colors.transparent;

  @override
  State<NoteWidget> createState() => _NoteWidgetState();
}

class _NoteWidgetState extends State<NoteWidget> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        Provider.of<NoteViewModel>(context, listen: false).initializeData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
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
                      padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                      child: Container(
                        color: widget._seconderyColor,
                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        child: Text((i+1).toString(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: widget._primaryColor)),
                      ),
                    ),
                  Flexible(
                    child: Consumer<NoteViewModel>(
                      builder: (_, viewModel, __) =>
                          TextField(
                            onChanged: (_) => viewModel.update(),
                            controller: viewModel.noteControllers[i],
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red, width: 2)
                                )
                            ),
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