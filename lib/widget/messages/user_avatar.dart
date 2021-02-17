import 'package:flutter/material.dart';
import '../../utils/index.dart';

class UserAvatar extends StatelessWidget {
  UserAvatar({this.image, this.name});
  String image, name;
  @override
  Widget build(BuildContext context) {
    double avatarSize = 68.0;
    var colorObject = getAvatarColorObject();
    if (image != null) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(60),
        child: Image.asset(
          image,
          width: avatarSize,
          height: avatarSize,
        ),
      );
    }
    return Container(
      width: avatarSize,
      height: avatarSize,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: colorObject['bgColor'],
        borderRadius: BorderRadius.circular(40),
      ),
      child: Text(
        '${getAvatarName(name)}',
        style: TextStyle(
            color: colorObject['textColor'],
            fontSize: 28,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
