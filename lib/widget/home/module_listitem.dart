import 'package:flutter/material.dart';

class ModuleListItem extends StatelessWidget {
  ModuleListItem({this.data});
  Map data;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12, top: 16, bottom: 24),
      width: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${data['name']}',
            style: TextStyle(
                color: Color(0xFF808080),
                fontSize: 13,
                fontWeight: FontWeight.w400),
          ),
          Container(
            margin: EdgeInsets.only(top: 12, bottom: 2),
            child: Text(
              '${data['value']}',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 22),
            ),
          ),
          Text(
            '${data['label']}',
            style: TextStyle(
                color: Color(0xFF808080),
                fontSize: 13,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
