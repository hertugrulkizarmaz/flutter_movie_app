import 'package:flutter/material.dart';
import 'package:flutter_movie_app/views/favorites/favorites.dart';

class DetailGoToFavoriteIcon extends StatelessWidget {
  const DetailGoToFavoriteIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: IconButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const Favorites()));
        }, 
        icon: const Icon(Icons.list_outlined, color: Colors.amber,),
        //remember, add color parameter to constants
        iconSize: 35,
      ),
    );
  }
}