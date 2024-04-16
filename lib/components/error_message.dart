
import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
   
    final String? message ;

  const ErrorMessage({ 
    super.key, required this.message
  });

  @override
  Widget build(BuildContext context) {
    return Text( message!
      ,
      style: TextStyle(
        color: Colors.black87,
        fontSize: 35,
      ),
    );
  }
}