
import 'package:cadeaue_boutique/Ui/my_card_tabs/sent_card.dart';
import 'package:cadeaue_boutique/core/app_localizations.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:flutter/material.dart';



class MyCardTabs extends StatefulWidget {
  @override
  _MyCardTabsState createState() => _MyCardTabsState();
}

class _MyCardTabsState extends State<MyCardTabs> with TickerProviderStateMixin {
  final int _startingTabCount = 2;

  List<Tab> _tabs = [];
  List<Widget> _generalWidgets = [];
  TabController _tabController;

  @override
  void initState() {
    _tabs = getTabs(_startingTabCount);
    _tabController = getTabController();
    super.initState();
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
          unselectedLabelColor: Colors.redAccent,
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
      text: "sent",
    );
    else if(widgetNumber==1)
      return Tab(
        text: "received",
      );
  }

  Widget getWidget(int widgetNumber) {

     return SentCards();
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
