import 'package:flutter/material.dart';
import 'package:jourbit/pages/journaling_view_page.dart';

class NoteWidget extends StatefulWidget {

  final String title, subtitle;
  final bool highlight;
  final JournalingViewPage rootPage;
  final noteControllers = List.generate(6, (_) => TextEditingController());
  final Color _primaryColor, _seconderyColor;

  NoteWidget({super.key, required this.title, required this.subtitle, required this.rootPage, this.highlight = true})
  : _primaryColor = highlight ? Colors.orange[800]! : Colors.black,
    _seconderyColor = highlight ? Colors.orangeAccent[100]! : Colors.transparent;

  @override
  State<NoteWidget> createState() => _NoteWidgetState();
}

class _NoteWidgetState extends State<NoteWidget> {

  late VoidCallback listener;

  @override
  void dispose() {
    super.dispose();
    for (var controller in widget.noteControllers) {
      controller.dispose();
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
                        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        child: Text((i+1).toString(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: widget._primaryColor)),
                      ),
                    ),
                  Flexible(
                    child: TextField(
                      // controller: _noteControllers[i],
                      decoration: InputDecoration(
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