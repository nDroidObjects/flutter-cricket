import 'package:cricketfantasy/screen/widget/create_team_progress_bar.dart';
import 'package:cricketfantasy/screen/widget/create_team_selection.dart';
import 'package:cricketfantasy/util/vars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'choose_c_vc.dart';

class CreateTeamScreen extends StatefulWidget {
  const CreateTeamScreen({Key key}) : super(key: key);
  @override
  _CreateTeamScreenState createState() => _CreateTeamScreenState();
}

class _CreateTeamScreenState extends State<CreateTeamScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 1, title: Text('Create Team')),
        bottomNavigationBar: Container(
            height: 40,
            child: Container(
                decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(4.0),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: Offset(0, 0),
                          blurRadius: 0.0)
                    ]),
                child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                        borderRadius: new BorderRadius.circular(4.0),
                        onTap: () =>
                            Navigator.pushNamed(context, routeTeamPreview),
                        child: Center(child: Text('TEAM PREVIEW')))))),
        body: Stack(alignment: AlignmentDirectional.bottomCenter, children: <
            Widget>[
          Column(children: <Widget>[
            Card(
                elevation: 0.5,
                margin: EdgeInsets.all(0),
                child: Column(children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(4),
                      child: Column(children: <Widget>[
                        Text('Max 7 players from a team',
                            style: TextStyle(color: Colors.black54)),
                        SizedBox(height: 5),
                        Text('30-4-2020',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold))
                      ])),
                  Container(
                      padding: EdgeInsets.all(4),
                      child: Row(children: <Widget>[
                        Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  child: Text('Players',
                                      style: TextStyle(color: Colors.black54))),
                              Row(children: <Widget>[
                                Text('0',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    )),
                                Text(' / 11',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ))
                              ])
                            ]),
                        Expanded(
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('IND',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.blue)),
                            SizedBox(width: 5),
                            Container(
                                width: 50,
                                height: 50,
                                child: CircleAvatar(
                                    backgroundColor:
                                        Colors.grey.withOpacity(0.1),
                                    backgroundImage:
                                        ExactAssetImage(profileImage))),
                            Container(
                                margin: EdgeInsets.only(left: 3, right: 3),
                                child: Text('vs',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.red))),
                            Container(
                                width: 50,
                                height: 50,
                                child: CircleAvatar(
                                    backgroundColor:
                                        Colors.grey.withOpacity(0.1),
                                    backgroundImage:
                                        ExactAssetImage(profileImage))),
                            SizedBox(width: 5),
                            Text('SA',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.blue))
                          ],
                        )),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text('Credits',
                                  style: TextStyle(
                                    color: Colors.black54,
                                  )),
                              Text('00',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black))
                            ])
                      ])),

                  GestureDetector(
                      onTap: () =>  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChooseCVCScreen(),
                              fullscreenDialog: true)),
                      child: Container(
                          padding: EdgeInsets.all(5),
                          child:  Text('Choose caption and vice caption', style: TextStyle(color: Colors.deepOrangeAccent)))),

                  Container(
                      height: 40,
                      width: double.infinity,
                      padding: EdgeInsets.all(7),
                      child: CreateTeamProgressBarWidget(teamCount: 11))
                ])),
            Container(
                height: 40,
                child: TabBar(
                  unselectedLabelColor: Colors.black54,
                  indicatorColor: Colors.black,
                  labelColor: Colors.black,
                  tabs: [
                    Tab(text: 'WK'),
                    Tab(text: 'BAT'),
                    Tab(text: 'AR'),
                    Tab(text: 'BOWL')
                  ],
                  controller: tabController,
                )),
            Flexible(
                child: TabBarView(
                    physics: BouncingScrollPhysics(
                      parent: PageScrollPhysics(),
                    ),
                    controller: tabController,
                    children: <Widget>[
                  CreateTeamSelectionWidget(title: 'Pick 1 Wicket - Keeper'),
                  CreateTeamSelectionWidget(title: 'Pick 3 - 5 Batsmens'),
                  CreateTeamSelectionWidget(title: 'Pick 1 - 3 All Rounders'),
                  CreateTeamSelectionWidget(title: 'Pick 3 - 5 Bowlers')
                ]))
          ])
        ]));
  }
}
