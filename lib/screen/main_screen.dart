import 'package:flutter/material.dart';
import '../widget/index.dart';
import '../utils/index.dart';
import './home/index.dart';
import './messages/index.dart';
import './media/index.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
  int activeIndex = 0;

  onTapBottomMenu(index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Container();
    if (activeIndex == 0) {
      content = HomeScreen();
    } else if (activeIndex == 1) {
      content = MediaScreen();
    } else if (activeIndex == 2) {
      content = MessagesScreen();
    }
    return Scaffold(
      backgroundColor: backgroundColor,
      body: content,
      bottomNavigationBar: Container(
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey, width: 0.5),
              ),
            ),
            child: Row(
              children: [
                BottomMenu(
                    label: 'Home',
                    isActive: activeIndex == 0,
                    onTap: () => onTapBottomMenu(0),
                    icon: Icons.home),
                BottomMenu(
                  label: 'Media',
                  isActive: activeIndex == 1,
                  onTap: () => onTapBottomMenu(1),
                  icon: Icons.perm_media_sharp,
                ),
                BottomMenu(
                  label: 'Message',
                  isActive: activeIndex == 2,
                  onTap: () => onTapBottomMenu(2),
                  icon: Icons.message,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
