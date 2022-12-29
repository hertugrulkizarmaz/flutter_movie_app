import 'dart:ui';

import 'package:flutter/material.dart';

class Constants {
  Constants._();

  //Global
  static const String defaultFontFamily = 'FjallaOne';

  //Home Page
  //Header Widget
  static const String headerTitleText = 'Welcome';
  static const TextStyle headerTitleTextStyle = TextStyle(
    fontSize: 22,
    color: Colors.white,
    fontWeight: FontWeight.bold
  );
  
  static const String searchBarTitle = 'What do you want to watch?';
  static const TextStyle searchBarTitleTextStyle = TextStyle(
    fontSize: 18, color: Colors.white
  );
  static const String inputDecorationHintText = 'Search movie';

  //Category Widget
  static const String nowPlayingTitle = 'Now Playing';
  static const FontWeight nowPlayingTitleFontWeight = FontWeight.bold;
  static const double nowPlayingTitleFontSize = 20;
  static const Color nowPlayingTitleTextColor = Colors.white;

  static const String nowPlayingButtonText = 'See All';
  static const FontWeight nowPlayingButtonFontWeight = FontWeight.bold;
  static const double nowPlayingButtonFontSize = 16;
  static const Color nowPlayingButtonTextColor = Colors.grey;


  //Coming Soon Widget
  static const String comingSoonTitleText = 'Coming Soon';
  static const FontWeight comingSoonTitleFontWeight = FontWeight.bold;
  static const double comingSoonTitleFontSize = 20;
  static const Color comingSoonTitleTextColor= Colors.white;

  static const String comingSoonButtonText = 'See All';
  static const FontWeight comingSoonButtonFontWeight = FontWeight.bold;
  static const double comingSoonButtonFontSize = 16;
  static const Color comingSoonButtonTextColor = Colors.grey;

  //Movie Item Widget
  static const TextStyle movieNameTextStyle = TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'FjallaOne');
  static const TextStyle movieYearTextStyle = TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontFamily: 'FjallaOne');
  static const TextStyle movieRatingTextStyle = TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'FjallaOne');

  //Detail Page
  //Detail Summary Widget
  static const String detailSummaryTitleText = 'Storyboard';
  static const TextStyle detailSummaryTitleTextStyle = TextStyle(fontFamily: 'FjallaOne', fontSize: 18);
  static const TextStyle detailSummaryMovieTextStyle = TextStyle(fontFamily: 'FjallaOne', fontSize: 16);

}