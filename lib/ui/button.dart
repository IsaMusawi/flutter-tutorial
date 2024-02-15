import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 1, color: Color(0xffffffffff)),
          left: BorderSide(width: 1, color: Color(0xffffffffff)),
          right: BorderSide(width: 1, color: Color(0xffff000000)),
          bottom: BorderSide(width: 1, color: Color(0xffff000000)),
        ),
      ),
      child: Container(
        padding: const
        EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(width: 1, color: Color(0xffffdfdfdf)),
            left: BorderSide(width: 1, color: Color(0xffffdfdfdf)),
            right: BorderSide(width: 1, color: Color(0xffff7f7f7f)),
            bottom: BorderSide(width: 1, color: Color(0xffff7f7f7f)),
          ),
          color: Colors.grey,
        ),
        child: const Text(
          'OK',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}