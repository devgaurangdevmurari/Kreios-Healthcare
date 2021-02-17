import 'package:flutter/material.dart';
import '../../utils/index.dart';

class TopTabBar extends StatelessWidget {
  TopTabBar({this.activeTab, this.onTap});
  int activeTab;
  Function onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Stack(
        children: [
          Container(
            height: 70,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: lineColor, width: 1.5),
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => onTap(0),
                  behavior: HitTestBehavior.translucent,
                  child: Container(
                    alignment: Alignment.center,
                    height: 70,
                    decoration: BoxDecoration(
                      border: activeTab == 0
                          ? Border(
                              bottom:
                                  BorderSide(color: headingTextColor, width: 3),
                            )
                          : null,
                    ),
                    child: Text(
                      str_messages,
                      style: TextStyle(
                          color: activeTab == 0
                              ? headingTextColor
                              : disableTextColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  onTap: () => onTap(1),
                  behavior: HitTestBehavior.translucent,
                  child: Container(
                    alignment: Alignment.center,
                    height: 70,
                    decoration: BoxDecoration(
                      border: activeTab == 1
                          ? Border(
                              bottom:
                                  BorderSide(color: headingTextColor, width: 3),
                            )
                          : null,
                    ),
                    child: Text(
                      str_notifications,
                      style: TextStyle(
                          color: activeTab == 1
                              ? headingTextColor
                              : disableTextColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: lineColor, width: 1.5),
        ),
      ),
      child: Row(
        children: [
          GestureDetector(
            child: Container(
              child: Text(
                str_messages,
                style: TextStyle(
                    color: activeTab == 0 ? headingTextColor : disableTextColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 19),
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          GestureDetector(
            child: Container(
              child: Text(
                str_notifications,
                style: TextStyle(
                    color: activeTab == 1 ? headingTextColor : disableTextColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 19),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
