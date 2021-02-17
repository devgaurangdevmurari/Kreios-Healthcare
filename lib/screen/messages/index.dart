import 'package:flutter/material.dart';
import '../../utils/index.dart';
import '../../widget/index.dart';

class MessagesScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MessagesScreenState();
  }
}

class _MessagesScreenState extends State<MessagesScreen> {
  var dataArray = [
    {
      'avtar': kUser1,
      'name': 'Clifford Hale',
      'label': 'Sent you a message',
      'description': 'Hallo bro anak wes piro saiki? wes kuliah urung?…',
      'time': '2 hour ago',
      'type': 'message'
    },
    {
      'name': 'Lottie Marsh',
      'label': 'Sent you a coin',
      'description': 'Bro iki nggo tuku es anakmu yo, ojo dinggo judi neh!!',
      'value': '+380.234',
      'time': '3 hour ago',
      'type': 'coin'
    },
    {
      'name': 'BTC',
      'label': 'News',
      'description': 'Bitcoin baru saja menguat 5 poin kalau tidak salah lho',
      'value': '+39.69%',
      'time': '3 hour ago',
      'type': 'news'
    },
    {
      'avtar': kUser2,
      'name': 'Danny Jacobs',
      'label': 'Sent you a message',
      'description': 'Besok jangan lupa mabar minecraft',
      'time': '2 hour ago',
      'type': 'message'
    },
    {
      'avtar': kUser1,
      'name': 'Clifford Hale',
      'label': 'Sent you a message',
      'description': 'Hallo bro anak wes piro saiki? wes kuliah urung?…',
      'time': '2 hour ago',
      'type': 'message'
    },
    {
      'name': 'Lottie Marsh',
      'label': 'Sent you a coin',
      'description': 'Bro iki nggo tuku es anakmu yo, ojo dinggo judi neh!!',
      'value': '+380.234',
      'time': '3 hour ago',
      'type': 'coin'
    },
    {
      'name': 'BTC',
      'label': 'News',
      'description': 'Bitcoin baru saja menguat 5 poin kalau tidak salah lho',
      'value': '+39.69%',
      'time': '3 hour ago',
      'type': 'news'
    },
  ];
  int activeTabIndex = 0;

  onTapTab(index) {
    setState(() {
      activeTabIndex = index;
    });
  }

  onTapItem(index) {
    setState(() {
      for (int i = 0; i < dataArray.length; i++) {
        if (i == index) {
          dataArray[i]['selected'] = 'true';
        } else {
          dataArray[i]['selected'] = 'false';
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                TopTabBar(
                  activeTab: activeTabIndex,
                  onTap: onTapTab,
                ),
                if (activeTabIndex == 0)
                  Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      itemCount: dataArray.length,
                      separatorBuilder: (context, index) => SizedBox(
                        height: 16,
                      ),
                      itemBuilder: (context, index) {
                        var element = dataArray[index];
                        return MessageListItem(
                            data: element, onTap: () => onTapItem(index));
                      },
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
