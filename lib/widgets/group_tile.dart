import 'package:flutter/material.dart';
import 'package:flutter_chatty/theme.dart';

class GroupTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  GroupTile({
    required this.imageUrl,
    required this.name,
    required this.text,
    required this.time,
    required this.unread,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            // 'assets/images/friend1.png',
            imageUrl,
            height: 55,
            width: 55,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                // 'Joshuer',
                name,
                style: titleTextStyle,
              ),
              Text(
                // 'Sorry, you’re not my ty...',
                text,
                style: unread
                    ? subtitleTextStyle.copyWith(color: blackColor)
                    : subtitleTextStyle,
              )
            ],
          ),
          Spacer(),
          Text(
            // 'Now',
            time,
            style: subtitleTextStyle,
          )
        ],
      ),
    );
  }
}
