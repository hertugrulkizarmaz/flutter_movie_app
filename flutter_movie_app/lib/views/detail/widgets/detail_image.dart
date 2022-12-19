import 'package:flutter/material.dart';
import 'package:flutter_movie_app/constants/constants.dart';
import 'package:flutter_movie_app/models/movies.dart';

class DetailImage extends StatelessWidget {
  final Movies movies;
  const DetailImage(this.movies, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height / 3.6,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20),
            width: 130,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(movies.movieImageUrl),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: 250,
                    child: Text(movies.movieName,
                        style: Constants.detailPageMovieNameTextStyle)),
                const SizedBox(
                  height: 10,
                ),
                Text(movies.movieYear.toString(),
                    style: const TextStyle(
                        fontFamily: Constants.defaultAppFontFamily)),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(movies.movieRating.toString(),
                        style: const TextStyle(
                            fontFamily: Constants.defaultAppFontFamily))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
