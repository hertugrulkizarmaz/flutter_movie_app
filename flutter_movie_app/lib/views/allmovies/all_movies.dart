import 'package:flutter/material.dart';
import 'package:flutter_movie_app/models/movies.dart';
import 'package:flutter_movie_app/services/services.dart';
import 'package:flutter_movie_app/views/allmovies/widgets/all_movies_list_tile.dart';
import 'package:flutter_movie_app/views/detail/detail_page.dart';

class AllMovies extends StatelessWidget {
  const AllMovies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<List<Movies>>(
          future: Services().readMoviesJson(context),
          builder: (context, snapshot) {
            if(snapshot.hasData){
              var movies = snapshot.data;
        
              return ListView.builder(
                itemCount: movies!.length,
                itemBuilder: (context, index){
                  var moviesList = movies[index];
              
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
          ),
      ),
    );
  }
}