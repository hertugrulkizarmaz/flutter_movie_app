import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_movie_app/models/movies.dart';
import 'package:flutter_movie_app/views/base_scaffold.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';

late Box box;
void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter<Movies>(MoviesAdapter());
  box = await Hive.openBox<Movies>('favorites');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        title: 'Flutter Movie App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const BaseScaffold(),
      ),
    );
  }
}
