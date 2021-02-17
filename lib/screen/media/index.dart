import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../../utils/index.dart';
import '../../widget/index.dart';

class MediaScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MediaScreenState();
  }
}

class _MediaScreenState extends State<MediaScreen> {
  var dataArray = [
    {
      'avatar': kUser3,
      'name': 'Kianna Dias',
      'time': '3 min ago',
      'title': 'Yoga for health',
      'description': 'we design it for you to have better experiences.',
      'content':
          'Follow our wonderfull Media library and a diversity of useful video for your health improvment'
    },
    {
      'avatar': kUser4,
      'name': 'Lydia Gerdit',
      'time': '3 min ago',
      'title': 'Healthy Diet Recomen...',
      'description': 'we design it for you to have better experiences.',
      'content':
          'Follow our wonderfull Media library and a diversity of useful video for your health improvment'
    }
  ];
  final videoPlayerController = VideoPlayerController.network(
      'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4');
  ChewieController chewieController;
  init() async {
    videoPlayerController
      ..initialize().then((value) {
        setState(() {});
      });
    videoPlayerController
      ..addListener(() {
        setState(() {});
      });
    videoPlayerController.play();
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  @override
  void dispose() {
    super.dispose();
    videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    str_media_library,
                    style: headingStyle,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    children: List.generate(dataArray.length, (index) {
                      var element = dataArray[index];
                      return Container(
                        margin: EdgeInsets.only(bottom: 16),
                        child: MediaListItem(
                            data: element,
                            videoPlayerController: videoPlayerController),
                      );
                    }),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: MoreButton(
                      text: str_see_more,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
