import 'package:flutter/material.dart';

class GridVeiwBuilder extends StatelessWidget {
  const GridVeiwBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 7,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,

              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
              color:const  Color.fromARGB(255, 111, 71, 224),),
            ),
          );
        });
  }
}
