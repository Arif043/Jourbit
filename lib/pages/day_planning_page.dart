
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jourbit/data/happiness.dart';
import 'package:jourbit/pages/journaling_view_page.dart';
import 'package:jourbit/widgets/note_widget.dart';

class DayPlanningPage extends StatefulWidget {

  static const double _iconSize = 48;
  final JournalingViewPage rootPage;

  const DayPlanningPage({super.key, required this.rootPage});

  List<TextEditingController> getController() {
    return [];
  }

  @override
  State<DayPlanningPage> createState() => _DayPlanningPageState();
}

class _DayPlanningPageState extends State<DayPlanningPage> {

  DailyHappiness? _selectedHappiness;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Tagesplanung', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),),
        ),
        NoteWidget(title: 'Tagesziele', subtitle: 'Wo liegt heute mein Fokus',),
        NoteWidget(title: 'Erkenntnisse', subtitle: 'Was habe ich gelernt?', highlight: false,),
        NoteWidget(title: 'Optimierung', subtitle: 'Woran möchte ich arbeiten?', highlight: false,),
        NoteWidget(title: 'Dankbarkeit', subtitle: 'Wofür bin ich dankbar?', highlight: false,),
        NoteWidget(title: 'Erfolge', subtitle: 'Was ist mir gut gelungen?',),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          customPaymentCardButton('assets/images/very_unhappy.svg', DailyHappiness.veryUnhappy),
          customPaymentCardButton('assets/images/unhappy.svg', DailyHappiness.unhappy),
          customPaymentCardButton('assets/images/some_what_dissatisfied.svg', DailyHappiness.somewhatDissatisfied),
          customPaymentCardButton('assets/images/neutral.svg', DailyHappiness.neutral),
          customPaymentCardButton('assets/images/some_what_satisfied.svg', DailyHappiness.somewhatSatisfied),
          customPaymentCardButton('assets/images/happy.svg', DailyHappiness.happy),
          customPaymentCardButton('assets/images/very_happy.svg', DailyHappiness.veryHappy)
        ])
      ],
    );
  }

  Widget customPaymentCardButton(String iconName, DailyHappiness happiness) {
    return SizedBox(
      width: DayPlanningPage._iconSize,
      height: DayPlanningPage._iconSize,
      child: OutlinedButton(
        onPressed: () {
          setState(() {
            _selectedHappiness = happiness;
          });
        },
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          side: BorderSide(
              width: (_selectedHappiness == happiness) ? 2.0 : 0.5,
              color: (_selectedHappiness == happiness)
                  ? Colors.green
                  : Colors.blue.shade600),
        ),
        child: SvgPicture.asset(iconName),
      ),
    );
  }

}