import 'package:flutter/material.dart';
import 'package:flutter_movie_app/constants/constants.dart';
import 'package:flutter_movie_app/constants/ui_colors.dart';
import 'package:flutter_movie_app/models/movies.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive/hive.dart';

class DetailSummary extends StatelessWidget {
  final Movies movies;
  const DetailSummary(this.movies, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().orientation == Orientation.portrait
          ? MediaQuery.of(context).size.height / 1.6
          : MediaQuery.of(context).size.height,
      width: double.infinity,
      margin: EdgeInsets.only(
          top: ScreenUtil().orientation == Orientation.portrait
              ? MediaQuery.of(context).size.height / 2.4
              : MediaQuery.of(context).size.height / 1.7),
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
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () async {
                var addToFavorite = Movies(
                    id: movies.id,
                    movieName: movies.movieName,
                    movieYear: movies.movieYear,
                    movieRating: movies.movieRating,
                    movieSummary: movies.movieSummary,
                    movieImageUrl: movies.movieImageUrl);
                Box<Movies> moviesBox = Hive.box<Movies>('favorites');
                await moviesBox.add(addToFavorite);
                Fluttertoast.showToast(
                    msg: '${movies.movieName} added to favorites.');
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.amberAccent,
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    Constants.addToFavoritesButtonText,
                    style: Constants.detailPageMovieNameTextStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
