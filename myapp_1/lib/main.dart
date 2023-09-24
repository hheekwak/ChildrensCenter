import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'homescreen.dart';
import 'infant_dailysheet.dart';
import 'person.dart';
import 'onboarding.dart';
import 'calendar_page.dart';

//onboarding screen
bool? isFirst;

// children list
Student eugeneLee = Student('Eugene Lee', '02012020EL', 'Giraffes class',
    'assets/images/0428Eugene.jpeg');
Student hajinLee = Student(
    'Hajin Lee', '10252022HL', 'Chicks class', 'assets/images/hajinlee.jpg');
List<Student> kids = [eugeneLee, hajinLee];

void main() async {
  //TODO: for boarding page
  // SharedPreferences pref = await SharedPreferences.getInstance();
  //isFirst = pref.getBool('isFirst');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: isFirst == null ? '/obd' : '/',
      //TODO: NOT TESTED and set isFirst to False
      routes: {
        '/': (context) => const HomeScreen(),
        //Child Info route not used because argument required
        '/dsi': (context) => const InfantDailySheet(),
        '/obd': (context) => const OnBoardingPage(),
        '/cal': (context) => const CalendarPage(),
      },
    );
  }
}
