import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cricketfantasy/util/route.dart';
import 'util/vars.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

  const SystemUiOverlayStyle dark = SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.blue,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarDividerColor: Colors.blue,
      statusBarIconBrightness: Brightness.dark);
  SystemChrome.setSystemUIOverlayStyle(dark);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final materialApp = MaterialApp(
      title: appName,
      theme: ThemeData(
          brightness: Brightness.light,
          accentColor: Colors.blue,
          primaryColor: Colors.blue,
          primarySwatch: Colors.blue,
          fontFamily: quickFont),
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: false,
      initialRoute: '/',
      onGenerateRoute: AppRouter.generateRoute);

  @override
  Widget build(BuildContext context) {
    return materialApp;
  }
}
