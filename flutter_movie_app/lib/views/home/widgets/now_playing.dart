import 'package:flutter/material.dart';
import 'package:flutter_movie_app/constants/constants.dart';
import 'package:flutter_movie_app/models/movies.dart';
import 'package:flutter_movie_app/services/services.dart';
import 'package:flutter_movie_app/views/detail/detail_page.dart';
import 'package:flutter_movie_app/views/home/widgets/movie_item.dart';

class NowPlaying extends StatelessWidget {
  const NowPlaying({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 49, 46, 46),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                _buildTitle(
                  Constants.nowPlayingTitle, 
                  Constants.nowPlayingTitleFontWeight, 
                  Constants.nowPlayingTitleFontSize, 
                  Constants.nowPlayingTitleTextColor,
                  Constants.defaultFontFamily),
                const Spacer(),
                TextButton(
                    onPressed: () {
                      /*Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage(movies: movies!,)));*/
                    },
                    child: _buildTitle(
                      Constants.nowPlayingButtonText, 
                      Constants.comingSoonButtonFontWeight, 
                      Constants.comingSoonButtonFontSize,
                    Constants.comingSoonButtonTextColor, 
                      Constants.defaultFontFamily
                    ))
              ],
            ),
            FutureBuilder<List<Movies>>(
                future: Services().readMoviesJson(context),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    var listMovies = snapshot.data;
                    return Expanded(
                      child: ListView.builder(
                          itemCount:
                              listMovies!.length > 1 ? 7 : listMovies.length,
                          itemBuilder: (context, index) {
                            var movies = listMovies[index];
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: GestureDetector(
                                child: MovieItem(movies: movies),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DetailPage(movies: movies)));
                                },
                              ),
                            );
                          }),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(String text, FontWeight fontWeight, double fontSize,
      Color color, String fontFamily) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: fontWeight,
            fontSize: fontSize,
            color: color,
            fontFamily: fontFamily),
      ),
    );
  }

  //listMovies!.length > 7 ? 7 : listMovies.length,
  //Color.fromARGB(255, 49, 46, 46),
  //FjallaOne
}
