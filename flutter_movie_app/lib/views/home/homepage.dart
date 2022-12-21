import 'package:flutter/material.dart';
import 'package:flutter_movie_app/views/home/widgets/category.dart';
import 'package:flutter_movie_app/views/home/widgets/coming_soon.dart';
import 'package:flutter_movie_app/views/home/widgets/header.dart';
import 'package:flutter_movie_app/views/home/widgets/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: const [Header(), Search(), Category(), ComingSoon()],
            )
          ],
        ),
      ),
    );
  }
}
