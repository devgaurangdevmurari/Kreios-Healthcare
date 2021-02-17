import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../index.dart';
import '../../utils/index.dart';

class MediaListItem extends StatelessWidget {
  MediaListItem({this.data, this.videoPlayerController});
  Map data;
  VideoPlayerController videoPlayerController;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              color: Colors.black.withOpacity(0.2),
              offset: Offset(0, 1),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              VideoView(videoPlayerController: videoPlayerController),
              Container(
                width: double.infinity,
                height: 260,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.2),
                    Colors.black.withOpacity(0.8)
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
              ),
              Container(
                width: double.infinity,
                height: 260,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              ClipRRect(
                                child: Image.asset(
                                  data['avatar'],
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                '${data['name']}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        Text(
                          '${data['time']}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${data['title']}',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 26),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          '${data['description']}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 260,
                child: GestureDetector(
                  child: Wrap(
                    children: [
                      Image.asset(
                        kPlay,
                        width: 32,
                        height: 32,
                        fit: BoxFit.contain,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 4),
            child: Text(
              data['content'],
              style: TextStyle(
                  color: Color(0xFF425466),
                  fontWeight: FontWeight.w400,
                  height: 1.6),
            ),
          ),
        ],
      ),
    );
  }
}
