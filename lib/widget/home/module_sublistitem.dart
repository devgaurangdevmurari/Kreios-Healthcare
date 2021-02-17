import 'package:flutter/material.dart';
import '../../utils/index.dart';

class ModuleSubListItem extends StatelessWidget {
  ModuleSubListItem({this.data});
  Map data;
  @override
  Widget build(BuildContext context) {
    var textColor = data['textcolor'];
    return Container(
      padding: EdgeInsets.only(left: 12, top: 16, bottom: 24),
      width: 180,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(data['bgimage']), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${data['name']}',
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.w400, fontSize: 14),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            str_from,
            style: TextStyle(color: textColor, fontSize: 12),
          ),
          Text(
            '${data['value']}',
            style: TextStyle(
                color: textColor, fontSize: 21, fontWeight: FontWeight.w600),
          ),
          Text(
            '${data['label']}',
            style: TextStyle(color: textColor, fontSize: 12),
          )
        ],
      ),
    );
  }
}
