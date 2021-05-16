
import 'package:cadeaue_boutique/Ui/my_card_tabs/bloc/tabs_card_bloc.dart';
import 'package:cadeaue_boutique/Ui/my_card_tabs/received_card.dart';
import 'package:cadeaue_boutique/Ui/my_card_tabs/sent_card.dart';
import 'package:cadeaue_boutique/core/app_localizations.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:flutter/material.dart';

import '../../injectoin.dart';
import 'bloc/tabs_card_event.dart';



class MyCardTabs extends StatefulWidget {

  String txtSent;
  String txtRevevied;


  MyCardTabs({this.txtSent, this.txtRevevied});

  @override
  _MyCardTabsState createState() => _MyCardTabsState();
}

class _MyCardTabsState extends State<MyCardTabs> with TickerProviderStateMixin {
  final int _startingTabCount = 2;

  List<Tab> _tabs = [];
  List<Widget> _generalWidgets = [];
  TabController _tabController;

  final _bloc = sl<TabsCardBloc>();

  @override
  void initState() {
    _tabs = getTabs(_startingTabCount);
    _tabController = getTabController();
    super.initState();

    _bloc.add(GetSentEvent());
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: baseText(title: AppLocalizations.of(context).translate("my_card"),
        size: 18.0),
        bottom: TabBar(
          tabs: _tabs,
          controller: _tabController,
          unselectedLabelColor: Colors.grey,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.yellow,
          labelColor: Colors.yellow,
        ),

      ),
      body: TabBarView(
        controller: _tabController,
        children: getWidgets(),
      ),
    );
  }

  TabController getTabController() {
    return TabController(length: _tabs.length, vsync: this);
  }

  Tab getTab(int widgetNumber) {
    if(widgetNumber==0)
    return Tab(
      text: widget.txtSent,
    );
    else if(widgetNumber==1)
      return Tab(
        text: widget.txtRevevied,
      );
  }

  Widget getWidget(int widgetNumber,) {

    if(widgetNumber==0)
     return SentCards(_bloc);
    else     return ReceviedCards(_bloc);

  /*  return Center(
      child: Text("Widget nr: $widgetNumber"),
    );*/
  }

  List<Tab> getTabs(int count) {
    _tabs.clear();
    for (int i = 0; i < count; i++) {
      _tabs.add(getTab(i));
    }
    return _tabs;
  }

  List<Widget> getWidgets() {
    _generalWidgets.clear();
    for (int i = 0; i < _tabs.length; i++) {
      _generalWidgets.add(getWidget(i));
    }
    return _generalWidgets;
  }

  void _addAnotherTab() {
    _tabs = getTabs(_tabs.length + 1);
    _tabController.index = 0;
    _tabController = getTabController();
    _updatePage();
  }

  void _removeTab() {
    _tabs = getTabs(_tabs.length - 1);
    _tabController.index = 0;
    _tabController = getTabController();
    _updatePage();
  }

  void _updatePage() {
    setState(() {});
  }
}
