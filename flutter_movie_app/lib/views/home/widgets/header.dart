import 'package:flutter/material.dart';
import 'package:flutter_movie_app/constants/constants.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                Constants.headerWidgetTitleText,
                style: Constants.headerWidgetTitleTextStyle,
              ),
              SizedBox(
                height: 5,
              ),
              Text(Constants.headerWidgetSubtitleText,
                  style: Constants.headerWidgetSubtitleTextStyle)
            ],
          ),
        ],
      ),
    );
  }
}
