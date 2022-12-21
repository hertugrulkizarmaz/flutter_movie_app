import 'package:flutter/material.dart';
import 'package:flutter_movie_app/views/favorites/favorites.dart';
import 'package:flutter_movie_app/views/home/homepage.dart';

class BaseScaffold extends StatefulWidget {
  const BaseScaffold({Key? key}) : super(key: key);

  @override
  State<BaseScaffold> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends State<BaseScaffold> {
  //final _pageList = [const HomePage(), Favorites()];
  List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
  ];

  int _selectedIndex = 0;

  void _setCurrentIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        currentIndex: _selectedIndex,
        onTap: _setCurrentIndex,
      ),
      body: pageList(),
    );
  }

  Widget pageList() {
    switch (_selectedIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const Favorites();
      default:
        return const HomePage();
    }
  }
}
