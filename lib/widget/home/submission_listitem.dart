import 'package:flutter/material.dart';
import '../../utils/index.dart';

class SubmissionListItem extends StatelessWidget {
  SubmissionListItem({this.data});
  Map data;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 2,
            offset: Offset(0, 1),
          )
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: data['color'],
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Image.asset(
                    data['icon'],
                    width: 28,
                    height: 28,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${data['name']}',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF27272E)),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        '${data['description']}',
                        style:
                            TextStyle(color: Color(0xFF425466), fontSize: 14),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Image.asset(
            kMore,
            width: 24,
            height: 24,
          )
        ],
      ),
    );
  }
}
