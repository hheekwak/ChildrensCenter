import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class InfantDailySheet extends StatelessWidget {
  const InfantDailySheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Daily Sheet', style: TextStyle(color: Colors.black)),
        backgroundColor: const Color.fromARGB(255, 160, 179, 160),
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
        Center(
          child: TextButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.teal)),
            onPressed: () {
              flutterToast();
            },
            child: const Text('Save', style: TextStyle(color: Colors.white)),
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
      msg: 'New Data Saved successfully',
      gravity: ToastGravity.BOTTOM,
      backgroundColor: const Color.fromARGB(255, 155, 117, 117),
      fontSize: 15.0,
      textColor: Colors.black,
      toastLength: Toast.LENGTH_SHORT);
}
