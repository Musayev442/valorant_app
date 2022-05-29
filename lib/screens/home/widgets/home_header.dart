import 'package:flutter/material.dart';

import 'home_button.dart';
import 'home_text_description.dart';
import 'home_title.dart';
import 'home_video.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(alignment: Alignment.center, children: [
        VideoPlayerApp(),
        SizedBox(
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeTextDescription(),
              HomeTitle(),
              HomeButton(
                Theme.of(context).primaryColor,
                Colors.white,
                Colors.white,
                "Play Free",
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
