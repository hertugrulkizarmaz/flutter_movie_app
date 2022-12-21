import 'package:flutter/material.dart';
import 'package:flutter_movie_app/models/movies.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundImageWidget extends StatelessWidget {
  final Movies movies;
  const BackgroundImageWidget(this.movies, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtil().orientation == Orientation.landscape
        ? Align(
            alignment: Alignment.center,
            child: Image.asset(
              movies.movieImageUrl,
            ),
          )
        : Align(
            alignment: Alignment.center,
            child: Image.asset(
              movies.movieImageUrl,
            ),
          );
  }
}
