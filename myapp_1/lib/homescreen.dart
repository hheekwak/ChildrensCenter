import 'package:flutter/material.dart';
import 'main.dart';
import 'child_info.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _HomeScreenState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[900],
      appBar: AppBar(
        title: const Text('SDSU CHILDREN\'S CENTER'),
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/0428_family_5inch.jpeg'),
                backgroundColor: Colors.white,
              ),
              accountName: const Text('Hyunhee'),
              accountEmail: const Text('blahblah@gmail.com'),
              onDetailsPressed: () {
                //DETAIL ACTION REQUIRED;
              },
              decoration: const BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  )),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.grey[700]),
              title: Text('Home', style: TextStyle(color: Colors.grey[700])),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
              trailing: const Icon(Icons.reorder),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.grey[700]),
              title: Text('Setting', style: TextStyle(color: Colors.grey[700])),
              onTap: () {
                //ACTION needs to be added
              },
              trailing: const Icon(Icons.reorder),
            ),
            ListTile(
              leading: Icon(Icons.question_answer, color: Colors.grey[700]),
              title: Text('Q&A', style: TextStyle(color: Colors.grey[700])),
              onTap: () {
                //ACTION needs to be added
              },
              trailing: const Icon(Icons.reorder),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(children: [
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              //TODO: show children list: picture name to connect to each child info
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (context) => ChildInfo(
                              student: hajinLee,
                            )),
                  );
                },
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/hajinlee.jpg'),
                  radius: 50.0,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (context) => ChildInfo(
                              student: eugeneLee,
                            )),
                  );
                },
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/0428Eugene.jpeg'),
                  radius: 50.0,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/obd');
                  },
                  child: const Text('boarding screen')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/cal');
                  },
                  child: const Text('go to Calendar')),
            ],
          ),
          Divider(
            height: 60.0,
            color: Colors.grey[850],
            thickness: 0.5,
            endIndent: 30.0,
          ),
          const Text(
            'SDSU Children\'s Center Updates',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 20.0,
            ),
          ),
          const SizedBox(
            height: 100.0,
          ),
          const Text(
            'Calendar Updates',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 20.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: const <Widget>[
              Icon(Icons.check_circle_outline),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Center closed Monday 5/29',
                style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
              ),
            ],
          ),
          Row(
            children: const <Widget>[
              Icon(Icons.check_circle_outline),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Center closed Monday 6/19',
                style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
              ),
            ],
          ),
          const SizedBox(
            height: 50.0,
          ),
          Center(
            child: Image.asset('assets/images/1000-horizontal-black.jpeg',
                height: 80),
          ),
        ]),
      ),
    );
  }
}
