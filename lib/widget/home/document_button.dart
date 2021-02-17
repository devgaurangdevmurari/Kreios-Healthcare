import 'package:flutter/material.dart';
import '../../utils/index.dart';

class DocumentButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        decoration: BoxDecoration(
          color: Color(0xFFEEF1FF),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: [
            Text(
              str_submit_document,
              style: TextStyle(
                  color: Color(0xFF4C6FFF), fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 8,
            ),
            Image.asset(
              kDownload,
              width: 24,
              height: 24,
            )
          ],
        ),
      ),
    );
  }
}
