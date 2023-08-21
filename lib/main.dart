import 'package:alienxyz/ShowDialog.dart';
import 'package:alienxyz/gesturedetector.dart';
import 'package:alienxyz/gridviewbuilder.dart';
import 'package:alienxyz/bottomnavbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void navigationButtonBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Center(child: Text('A P P B A R')),

          // leading: IconButton(onPressed:  () => {} , icon: Icon(Icons.menu), ),
          actions: [
            IconButton(onPressed: () => {}, icon: const Icon(Icons.person))
          ],
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.blue[100],
            child: ListView(
              children: [
                const Center(
                  child: DrawerHeader(
                    child: Text(
                      'L O G O',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('GESTURE DETECTOR'),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => GesturDetector()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.local_gas_station),
                  title: Text('Gas Station'),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => GridVeiwBuilder()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.book),
                  title: Text('Dialog Alert'),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => ShowDialog())));
                  },
                )
              ],
            ),
          ),
        ),

        body: const Column(
          children: [
            TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.house,
                  color: Colors.blue,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              )
            ]),
          ],
        ),
        // GridVeiwBuilder()
        // GesturDetector()
        // Menu(),

        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: navigationButtonBar,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.location_city), label: 'Location'),
              BottomNavigationBarItem(icon: Icon(Icons.login), label: 'Login')
            ]),

        // Center(
        //   child: Container(
        //     child: Image.asset('lib/images/chika.png')
        //     )
        // )
        // GridView.count(crossAxisCount: 2,
        // children: [

        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.blueAccent,
        //     ),
        //   ),

        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.amberAccent,
        //     ),
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.deepPurple,
        //     ),
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.pinkAccent,
        //     ),
        //   ),

        // ]
        // ,
        // )

        // Center(

        //   child:ClipRRect(

        //   borderRadius: BorderRadius.circular(30.0),

        //   child: Container(
        //     height: 200.0,
        //     width: 200.0,

        //     color: Colors.amberAccent,
        //   )
        //   )
        // ),
      ),
    );
  }
}
