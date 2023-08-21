// ignore: file_names
import 'package:flutter/material.dart';

class ShowDialog extends StatefulWidget {
  const ShowDialog({super.key});

  @override
  State<ShowDialog> createState() => _ShowDialogState();
}

class _ShowDialogState extends State<ShowDialog> {

  _showDialog(){
    context:context;
    builder: (context){
      return AlertDialog(
        title: Text('Another'),
      );

    };

  }

  @override

  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 113, 54, 214),

      child: Center(child: Padding(

        padding: const EdgeInsets.all(10.0),

        child: MaterialButton(onPressed: () => _showDialog() ,  child: const Padding(

          padding: EdgeInsets.all(8.0),

          child: Text('Welcome' , style: TextStyle(fontSize: 30 , color: Colors.white),),

        ),),

      )),
      
      

    );
  }
}