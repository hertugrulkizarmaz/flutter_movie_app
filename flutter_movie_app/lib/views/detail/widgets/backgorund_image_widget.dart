import 'package:flutter/material.dart';
import 'package:flutter_movie_app/models/movies.dart';

class BackgroundImageWidget extends StatelessWidget {
  final Movies movies;
  const BackgroundImageWidget(this.movies, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Image.asset(
        movies.movieImageUrl,
      ),
    );
  }
}
