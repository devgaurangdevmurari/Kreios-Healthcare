import 'dart:math';
import './index.dart';

Map getAvatarColorObject() {
  Random rnd = Random();
  int index = rnd.nextInt(3);
  return userAvatarColors[index];
}

String getAvatarName(String name) {
  if (name != null && name.length > 0) {
    return name.substring(0, 1);
  }
  return '';
}
