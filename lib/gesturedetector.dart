import 'package:flutter/material.dart';

class GesturDetector extends StatefulWidget {
  const GesturDetector({super.key});

  @override
  State<GesturDetector> createState() => _GesturDetectorState();
}

class _GesturDetectorState extends State<GesturDetector> {

  int numberOfTimesTaped = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           Text(
            'Tap $numberOfTimesTaped Times',
            style: const TextStyle(fontSize: 30),
          ),
          GestureDetector(
            onTap: () {
              setState(()  => numberOfTimesTaped++     
              );
            },
            child: Container(
              padding:const  EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.green,
              ),
              child: const Text(
                'TAP HERE',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
