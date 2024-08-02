import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
          ),
          padding: EdgeInsets.all(25),
          child: Text(
            "L O G I N"
          ),


        )
    );
  }
}
