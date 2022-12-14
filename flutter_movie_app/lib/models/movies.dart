import 'dart:convert';

Movies moviesFromMap(String str) => Movies.fromMap(json.decode(str));

String moviesToMap(Movies data) => json.encode(data.toMap());

class Movies {
  Movies(
      {required this.id,
      required this.movieName,
      required this.movieYear,
      required this.movieRating,
      required this.movieSummary,
      required this.movieImageUrl});

  final int id;
  final String movieName;
  final int movieYear;
  final double movieRating;
  final String movieSummary;
  final String movieImageUrl;

  factory Movies.fromMap(Map<String, dynamic> json) => Movies(
        id: json["id"],
        movieName: json["movieName"],
        movieYear: json["movieYear"],
        movieRating: json["movieRating"],
        movieSummary: json["movieSummary"],
        movieImageUrl: json["movieImageUrl"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "movieName": movieName,
        "movieYear": movieYear,
        "movieRating": movieRating,
        "movieSummary": movieSummary,
        "movieImageUrl": movieImageUrl,
      };
}
