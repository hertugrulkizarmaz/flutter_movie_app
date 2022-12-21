import 'dart:convert';
import 'package:hive/hive.dart';
part 'movies.g.dart';

Movies moviesFromMap(String str) => Movies.fromMap(json.decode(str));

String moviesToMap(Movies data) => json.encode(data.toMap());

@HiveType(typeId: 0)
class Movies extends HiveObject{

  @HiveField(0)
  final int id;

  @HiveField(1)
  final String movieName;

  @HiveField(2)
  final int movieYear;

  @HiveField(3)
  final double movieRating;

  @HiveField(4)
  final String movieSummary;

  @HiveField(5)
  final String movieImageUrl;

  Movies(
      {required this.id,
      required this.movieName,
      required this.movieYear,
      required this.movieRating,
      required this.movieSummary,
      required this.movieImageUrl});

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
