import 'package:cricketfantasy/screen/page/playerprofile.dart';
import 'package:cricketfantasy/util/hexacolor.dart';
import 'package:cricketfantasy/util/vars.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class CreateTeamSelectionWidget extends StatefulWidget {
  final String title;
  const CreateTeamSelectionWidget({Key key, this.title}) : super(key: key);
  @override
  createState() => _CreateTeamSelectionState();
}

class _CreateTeamSelectionState extends State<CreateTeamSelectionWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
          width: double.infinity,
          height: 40,
          color: HexColor('#F5F5F5'),
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 3, right: 3),
          child: Center(
              child: Text(widget.title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black)))),
      Column(children: <Widget>[
        Container(
            padding: EdgeInsets.all(10),
            child: Row(children: <Widget>[
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('PLAYERS', style: TextStyle(fontSize: 12)),
                          ]))),
              Container(
                  width: 70,
                  child: Center(
                      child: Text('POINTS',
                          style:
                              TextStyle(fontSize: 12, color: Colors.black54)))),
              SizedBox(width: 5),
              Container(
                  width: 70,
                  child: Center(
                      child: Row(children: <Widget>[
                    Text('CREDIT',
                        style: TextStyle(fontSize: 12, color: Colors.black54)),
                    Icon(LineIcons.arrow_down, size: 20)
                  ]))),
              Container(width: 40)
            ])),
        Divider(height: 1)
      ]),
      Flexible(
          child: ListView(shrinkWrap: true, children: <Widget>[
        Container(
            margin: EdgeInsets.only(top: 0, bottom: 3),
            child: Column(children: <Widget>[
              Container(
                  color: HexColor('#F5F5F5'),
                  padding: EdgeInsets.all(5),
                  child: Row(children: <Widget>[
                    Container(
                        child: InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PlayerProfileScreen(),
                                    fullscreenDialog: true)),
                            child: Container(
                                width: 45,
                                height: 45,
                                child: CircleAvatar(
                                    backgroundColor:
                                        Colors.grey.withOpacity(0.1),
                                    backgroundImage:
                                        ExactAssetImage(profileImage))))),
                    Expanded(
                        child: Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Player Name',
                                      style: TextStyle(fontSize: 14)),
                                  Container(
                                      padding: EdgeInsets.only(top: 1),
                                      child: Text('SA - WK',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black54)))
                                ]))),
                    Container(
                        width: 70,
                        child: Center(
                            child: Text('00',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black54)))),
                    SizedBox(width: 5),
                    Container(
                        width: 70,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('00',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black54)),
                              SizedBox(width: 20)
                            ])),
                    Center(
                        child: Container(
                            width: 40, child: Icon(LineIcons.close, size: 20)))
                  ])),
              SizedBox(height: 0.3),
              Divider(height: 1, color: Colors.black12, thickness: 0.3)
            ]))
      ]))
    ]);
  }
}
