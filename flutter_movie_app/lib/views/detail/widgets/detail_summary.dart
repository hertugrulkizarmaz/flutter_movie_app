import 'package:flutter/material.dart';
import 'package:flutter_movie_app/constants/constants.dart';
import 'package:flutter_movie_app/constants/ui_colors.dart';
import 'package:flutter_movie_app/models/movies.dart';

class DetailSummary extends StatelessWidget {
  final Movies movies;
  const DetailSummary(this.movies, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.6,
      width: double.infinity,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.4),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.zero,
          bottomRight: Radius.zero,
        ),
        boxShadow: [
          BoxShadow(
              blurRadius: 100,
              blurStyle: BlurStyle.outer,
              color: Colors.grey,
              spreadRadius: -10),
        ],
        color: UIColors.defaultContainerColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(Constants.detailSummaryTitleText,
                style: Constants.detailSummaryTitleTextStyle),
            const SizedBox(
              height: 10,
            ),
            Text(
              movies.movieSummary,
              style: Constants.detailSummaryMovieSummaryTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
