import 'package:flutter/material.dart';

class IconColumn extends StatelessWidget {
  IconColumn({@required this.icon, @required this.title});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        icon,
        size: 80.0,
      ),
      SizedBox(
        height: 15.0,
      ),
      Text(
        title,
        style: TextStyle(
          fontSize: 18.0,
          color: Color(0xff8d8e98),
        ),
      ),
    ]);
  }
}