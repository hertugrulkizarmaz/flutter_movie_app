import 'package:flutter/material.dart';
import 'package:flutter_movie_app/models/movies.dart';
import 'package:flutter_movie_app/views/favorites/widgets/my_list_tile.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: ValueListenableBuilder<Box<Movies>>(
          valueListenable: Hive.box<Movies>('favorites').listenable(),
          builder: ((context, box, _) {
            return Hive.box<Movies>('favorites').isEmpty
                ? const Center(
                    child: Text("Favorites is Empty."),
                  )
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                              itemCount: box.values.length,
                              itemBuilder: (context, index) {
                                Movies mainMovie = box.getAt(index)!;
                                return MyListTile(mainMovie, index);
                              }),
                        ),
                      ],
                    ),
                  );
          })),
    );
  }
}
