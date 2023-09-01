import 'package:flutter/material.dart';
import 'package:trip_planner/database/db_helper.dart';
import 'package:trip_planner/screens/introduction/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseHelper.instance.initDB();
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.light(),
      title: 'Trip Planner',
      home: MyCustomSplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
