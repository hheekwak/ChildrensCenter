import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Children\'s Center Calendar',
            style: TextStyle(color: Colors.white38)),
        backgroundColor: const Color.fromARGB(130, 107, 37, 37),
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.chat_bubble_rounded),
            onPressed: () {
              //CHAT ACTION REQUIRED
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              //SEARCH ACTION REQUIRED
            },
          ),
        ],
      ),
      body: Column(children: [
        //TODO: calendar import
        const SizedBox(
          height: 50.0,
        ),
        Container(
          height: 350,
          width: 350,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 114, 112, 112),
          ),
          child: const Text(
            'Imported Calendar position',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 10.0,
              fontSize: 40.0,
            ),
          ),
        ),
        const SizedBox(
          height: 50.0,
        ),
        Center(
          child: TextButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.green)),
            onPressed: () {
              flutterToast();
            },
            child: const Text('Save to my calendar',
                style: TextStyle(color: Colors.brown)),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
      ]),
    );
  }
}

void flutterToast() {
  Fluttertoast.showToast(
      msg: 'Schedule imported',
      gravity: ToastGravity.BOTTOM,
      backgroundColor: const Color.fromARGB(255, 155, 117, 117),
      fontSize: 15.0,
      textColor: Colors.black,
      toastLength: Toast.LENGTH_SHORT);
}
