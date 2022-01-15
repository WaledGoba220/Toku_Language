import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContainerWidget extends StatelessWidget {
  String? text;
  Color? color;
  VoidCallback? onTap;
  ContainerWidget({this.text, this.color, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 65,
        color: color,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 24),
        child: Text(
          text!,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }
}
