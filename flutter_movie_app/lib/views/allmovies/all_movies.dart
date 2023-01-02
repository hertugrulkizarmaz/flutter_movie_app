import 'package:flutter/material.dart';
import 'package:flutter_movie_app/constants/constants.dart';
import 'package:flutter_movie_app/constants/ui_colors.dart';
import 'package:flutter_movie_app/models/movies.dart';
import 'package:flutter_movie_app/services/services.dart';
import 'package:flutter_movie_app/views/allmovies/widgets/all_movies_list_tile.dart';
import 'package:flutter_movie_app/views/allmovies/widgets/all_movies_search_widget.dart';
import 'package:flutter_movie_app/views/detail/detail_page.dart';

class AllMovies extends StatefulWidget {
  const AllMovies({Key? key}) : super(key: key);

  @override
  State<AllMovies> createState() => _AllMoviesState();
}

class _AllMoviesState extends State<AllMovies> {
  var sortedIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AllMoviesSearchWidget(sortedIndex: sortedIndex, sortOnTapped: (){
              sortByRating(context);
            }),
            Expanded(
              child: sortAllMovies(context, sortedIndex),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> sortByRating(BuildContext context) {
    return showDialog(
                      context: context, 
                      builder: (context) =>
                      SimpleDialog(
                      title: const Text('Sort By: '),
                      children: [
                        SimpleDialogOption(
                          child: const Text('IMDB 9.5 - 8.1'),
                          onPressed: (){
                            setState(() {
                              sortedIndex = 1;
                            });
                            Navigator.pop(context);
                            },
                        ),
                        SimpleDialogOption(
                          child: const Text('IMDB 8.1 - 7.0'),
                          onPressed: (){
                            setState(() {
                              sortedIndex = 2;
                            });
                            Navigator.pop(context);
                            },
                        ),
                      ],
                    )
                      );
  }

  FutureBuilder<List<Movies>> sortAllMovies(BuildContext context, int sortedIndex) {
    return FutureBuilder<List<Movies>>(
              future: Services().readMoviesJson(context),
              builder: (context, snapshot) {
                if(snapshot.hasData){
                  var movies = snapshot.data;
                  var filtered1 = movies!.where((element) => element.movieRating >= 8.1).toList();
                  var filtered2 = movies.where((element) => element.movieRating <=8.1 && element.movieRating >=7.0).toList();
                  var filtered3 = movies.where((element) => element.movieRating < 9.8).toList();
                  
                  sortedIndex == 0
                  ? filtered3
                  : sortedIndex == 1
                  ? filtered1
                  : sortedIndex == 2
                  ? filtered2
                  : movies.length;
                  
                  return ListView.builder(
                    itemCount: sortedIndex == 0 ? filtered3.length : sortedIndex == 1 ? filtered1.length : sortedIndex == 2 ? filtered2.length : movies.length,
                    itemBuilder: (context, index){
                      
                      var moviesList = sortedIndex == 0 ? filtered3[index] : sortedIndex == 1 ? filtered1[index] : sortedIndex == 2 ? filtered2[index] : movies[index];
                      //movies.sort((a, b) => a.movieRating.compareTo(b.movieRating));

                      return AllMoviesListTile(
                        movies: moviesList, 
                        onItemTapped: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage(movies: moviesList)));
                        },);
                    },
                    physics: const ClampingScrollPhysics(),
                    );
                }
                return const Center(child: CircularProgressIndicator(),);
              }
              );
  }
}