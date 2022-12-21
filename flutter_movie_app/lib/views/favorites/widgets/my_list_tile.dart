import 'package:flutter/material.dart';
import 'package:flutter_movie_app/constants/constants.dart';
import 'package:flutter_movie_app/models/movies.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyListTile extends StatefulWidget {
  const MyListTile(this.movies, this.index, {Key? key}) : super(key: key);
  final Movies movies;
  final int index;
  @override
  State<MyListTile> createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                        image: AssetImage(widget.movies.movieImageUrl))),
              ),
              Expanded(
                child: Text(
                  widget.movies.movieName,
                  style: Constants.mylistTileMoviesTextStyle,
                ),
              ),
              IconButton(
                  onPressed: () {
                    widget.movies.delete();
                    Fluttertoast.showToast(
                        msg:
                            '${widget.movies.movieName} deleted from favorites',
                        toastLength: Toast.LENGTH_LONG,
                        backgroundColor: Colors.white,
                        textColor: Colors.black);
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
