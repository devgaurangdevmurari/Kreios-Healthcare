import 'package:flutter/material.dart';
import '../../utils/index.dart';

class MoreButton extends StatelessWidget {
  MoreButton({this.text, this.onTap});
  String text;
  Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          '$text',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15),
        ),
      ),
    );
  }
}
