import 'package:flutter/material.dart';
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
        color: Color.fromARGB(255, 49, 46, 46),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Storyboard',
                style: TextStyle(fontFamily: 'FjallaOne', fontSize: 18)),
            const SizedBox(
              height: 10,
            ),
            Text(
              movies.movieSummary,
              style: const TextStyle(fontFamily: 'FjallaOne', fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
