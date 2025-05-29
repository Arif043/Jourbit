import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get_it/get_it.dart';
import 'package:jiffy/jiffy.dart';
import 'package:jourbit/presentation/view/journal/week_planning_page.dart';
import 'package:jourbit/presentation/view_model/journal/day_planning_page_view_model.dart';
import 'package:provider/provider.dart';
import '../../../data/journal_repository.dart';
import '../../view_model/journal/journaling_view_page_view_model.dart';
import 'day_planning_page.dart';
import 'month_planning_page.dart';
import 'package:flutter/services.dart' show rootBundle;


class JournalingViewPage extends StatefulWidget {

  const JournalingViewPage({super.key});

  @override
  State<StatefulWidget> createState() => _JournalingViewPageState();
}

class _JournalingViewPageState extends State<JournalingViewPage> with WidgetsBindingObserver {

  @override
  void initState() {
    super.initState();
    Provider.of<JournalingViewPageViewModel>(context, listen: false).fetchRandomCitate();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      Provider.of<JournalingViewPageViewModel>(context, listen: false).fetchRandomCitate();
    }
  }

  @override
  Widget build(BuildContext context) {
    Jiffy.setLocale(context.tr('lang'));
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      final viewModel = Provider.of<JournalingViewPageViewModel>(context, listen: false);

      return Column(
        children: [
          Expanded(
            child: Consumer<JournalingViewPageViewModel>(
                builder: (_, viewModel, __) =>
                    IndexedStack(
                      index: viewModel.journalingType,
                      children: [
                        SingleChildScrollView(child: ChangeNotifierProvider(
                          create: (_) => DayPlanningPageViewModel(GetIt.I.get<JournalRepository>()),
                          child: DayPlanningPage(key: ValueKey(viewModel.repository.date),),
                        ),),
                        SingleChildScrollView(child: WeekPlanningPage(key: UniqueKey(),),),
                        SingleChildScrollView(child: MonthPlanningPage(key: UniqueKey()),)
                      ],
                    )
            ),
          ),
          Visibility(
              visible: !isKeyboardVisible,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey[400]!
                  ),
                ),
                child: Column(
                  children: [
                    Visibility(
                      visible: false,
                      child: Padding(
                        padding:
                        const EdgeInsets.only(top: 24, right: 16, left: 16, bottom: 16),
                        child: Consumer<JournalingViewPageViewModel>(
                          builder: (_, viewModel, __) =>
                              Text(
                                viewModel.citate,
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: viewModel.performBackwardNavigation,
                              icon: const Icon(Icons.arrow_back)),
                          Consumer<JournalingViewPageViewModel>(builder: (_, viewModel, __) => _buildDateText(context, viewModel)),
                          IconButton(
                              onPressed: viewModel.performForwardNavigation,
                              icon: const Icon(Icons.arrow_forward)),
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      );
    });
  }

  Widget _buildDateText(BuildContext context, JournalingViewPageViewModel viewModel) {
    if (viewModel.journalingType == 0) {
      return Text(viewModel.repository.wellFormattedDate);
    }
    else if (viewModel.journalingType == 1) {
      return Text('${viewModel.repository.getWeekDay()}. ${context.tr('calendar_week')}');
    }
    else if (viewModel.journalingType == 2) {
      return Text('${viewModel.repository.month}, ${viewModel.repository.year}');
    }
    return Container();
  }
}