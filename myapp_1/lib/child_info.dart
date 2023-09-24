import 'package:flutter/material.dart';
import 'person.dart';

class ChildInfo extends StatefulWidget {
  const ChildInfo({super.key, required this.student});

  final Student student;

  @override
  State<ChildInfo> createState() => _ChildInfoState();
}

class _ChildInfoState extends State<ChildInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 249, 226, 48),
      appBar: AppBar(
        title: Text(widget.student.name),
        backgroundColor: Colors.red[700],
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(widget.student.imgPath),
                radius: 70.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),
            const Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              widget.student.name,
              style: const TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Class',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              widget.student.location,
              style: const TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: <Widget>[
                const Icon(Icons.check_circle_outline),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  'DOB: ${widget.student.dob}',
                  style: const TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                const Icon(Icons.check_circle_outline),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Allergic to ${widget.student.allergy}',
                  style: const TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Center(
              child: TextButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.grey),
                  foregroundColor: MaterialStatePropertyAll(Colors.amber),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: const Text('Move to Daily Sheet Page'),
                        duration: const Duration(seconds: 5),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {
                            Navigator.pushNamed(context, '/');
                          },
                        )),
                  );
                  Navigator.pushNamed(context, '/dsi');
                },
                child: const Text(
                  'Daily Sheet',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child: Image.asset('assets/images/1000-horizontal-black.jpeg',
                  height: 60),
            ),
          ],
        ),
      ),
    );
  }
}
