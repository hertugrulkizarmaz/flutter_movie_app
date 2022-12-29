import 'package:flutter/material.dart';
import 'package:flutter_movie_app/constants/constants.dart';
import 'package:flutter_movie_app/models/movies.dart';

class AllMoviesListTile extends StatelessWidget {
  const AllMoviesListTile({required this.movies, required this.onItemTapped, Key? key}) : super(key: key);
  final Movies movies;
  final void Function() onItemTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onItemTapped,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage(movies.movieImageUrl))),
                ),
                Expanded(
                  child: Text(
                    movies.movieName,
                    style: Constants.mylistTileMoviesTextStyle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}