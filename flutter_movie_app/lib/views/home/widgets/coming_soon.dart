import 'package:flutter/material.dart';
import 'package:flutter_movie_app/models/movies.dart';
import 'package:flutter_movie_app/services/services.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: const Color.fromARGB(255, 49, 46, 46),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                _buildTitle('Coming Soon', FontWeight.bold, 20, Colors.white),
                const Spacer(),
                TextButton(
                    onPressed: () {},
                    child: _buildTitle(
                        'See All', FontWeight.bold, 16, Colors.grey)),
              ],
            ),
            FutureBuilder<List<Movies>>(
                future: Services().readMoviesJson(context),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    var moviesList = snapshot.data;
                    return SizedBox(
                        height: 200,
                        child: ListView.separated(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 20),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              var movies = moviesList![index];

                              return GestureDetector(
                                onTap: () {
                                  //Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(listGames[index])));
                                },
                                child: Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.asset(movies.movieImageUrl),
                                    ),
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (_, index) => const SizedBox(
                                  width: 10,
                                ),
                            itemCount: moviesList!.length > 1
                                ? 4
                                : moviesList.length));
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                })
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(
      String text, FontWeight fontWeight, double fontSize, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Text(
        text,
        style:
            TextStyle(fontWeight: fontWeight, fontSize: fontSize, color: color),
      ),
    );
  }
}
