import 'package:flutter/material.dart';
import '../../utils/index.dart';

class BottomMenu extends StatelessWidget {
  BottomMenu({this.label, this.onTap, this.isActive = false, this.icon});
  String label;
  bool isActive;
  Function onTap;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.translucent,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 24,
                color: isActive ? buttonColor : Colors.black,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                '$label',
                style: TextStyle(
                    fontWeight: isActive ? FontWeight.w700 : FontWeight.w400,
                    color: isActive ? buttonColor : Colors.black,
                    fontSize: isActive ? 16 : 14),
              )
            ],
          ),
        ),
      ),
    );
  }
}
