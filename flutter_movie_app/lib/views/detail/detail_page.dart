import 'package:flutter/material.dart';
import 'package:flutter_movie_app/models/movies.dart';
import 'package:flutter_movie_app/views/detail/widgets/backgorund_image_widget.dart';
import 'package:flutter_movie_app/views/detail/widgets/detail_goto_favorite_icon.dart';
import 'package:flutter_movie_app/views/detail/widgets/detail_header.dart';
import 'package:flutter_movie_app/views/detail/widgets/detail_image.dart';
import 'package:flutter_movie_app/views/detail/widgets/detail_summary.dart';

class DetailPage extends StatelessWidget {
  final Movies movies;
  const DetailPage({required this.movies, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  BackgroundImageWidget(movies),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: const [
                        DetailHeader(),
                        Spacer(),
                        DetailGoToFavoriteIcon()
                      ],
                    ),
                  ),
                  DetailSummary(movies),
                  DetailImage(movies)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
