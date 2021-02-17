import 'package:flutter/material.dart';
import '../../utils/index.dart';
import '../index.dart';

class MessageListItem extends StatelessWidget {
  MessageListItem({this.data, this.onTap});
  Function onTap;
  Map data;
  @override
  Widget build(BuildContext context) {
    Color selectedBackground =
        data['selected'] != null && data['selected'] == 'true'
            ? Color(0xFFE3EAFF)
            : backgroundColor;
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(color: selectedBackground),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UserAvatar(image: data['avtar'], name: data['name']),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                '${data['name']}',
                                style: TextStyle(
                                    color: Color(0xFF8786AB),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Text(
                                  '${data['label']}',
                                  style: TextStyle(
                                      color: Color(0xFF75749C),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '${data['description']}',
                            style: TextStyle(
                                color: Color(0xFF59588D),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          if (data['type'] != null && data['type'] == 'coin')
                            Container(
                              margin: EdgeInsets.only(bottom: 8),
                              child: Text(
                                '${data['value']}',
                                style: TextStyle(
                                    color: Color(0xFF50E3C2),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          if (data['type'] != null && data['type'] == 'news')
                            Container(
                              child: Row(
                                children: [
                                  Image.asset(
                                    kPath,
                                    width: 28,
                                    height: 28,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Image.asset(
                                    kComShape,
                                    width: 11,
                                    height: 11,
                                    fit: BoxFit.contain,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    '${data['value']}',
                                    style: TextStyle(
                                        color: Color(0xFF50E3C2),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          Text(
                            '${data['time']}',
                            style: TextStyle(
                                color: Color(0xFF59588D),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 12,
            ),
            if (data['selected'] != null && data['selected'] == 'true')
              GestureDetector(
                child: Image.asset(
                  kMore,
                  width: 24,
                  height: 24,
                ),
              )
          ],
        ),
      ),
    );
  }
}
