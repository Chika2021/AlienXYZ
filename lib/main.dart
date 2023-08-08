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
    return Scaffold(
      body:
          // GridVeiwBuilder()
          // GesturDetector()
          Menu(),

      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: navigationButtonBar,
          type: BottomNavigationBarType.fixed,
          items: [
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
    );
  }
}
