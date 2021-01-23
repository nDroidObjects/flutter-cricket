import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class MyProfileDetailScreen extends StatefulWidget {
  const MyProfileDetailScreen({Key key}) : super(key: key);
  @override
  createState() => _MyProfileDetailState();
}

class _MyProfileDetailState extends State<MyProfileDetailScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () async {}, child: Icon(LineIcons.edit)),
        body: ListView(padding: EdgeInsets.all(0),
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              myProfile('Name', 'Kamlesh'),
              myProfile('Email', 'kamal.lakhani56@gmail.com'),
              myProfile('Mobile', '9586331823'),
              myProfile('Birth Date', '20-12-1990'),
              myProfile('Gender', 'Male'),
              myProfile('Country', 'India'),
              myProfile('State', '-'),
              myProfile('City', 'Ravani')
            ]));
  }

  myProfile(String title, String response) => Column(children: <Widget>[
        Container(
            padding: EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      child:
                          Text(title, style: TextStyle(color: Colors.black54))),
                  Container(child: Text(response))
                ])),
        Divider()
      ]);
}
