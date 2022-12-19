import 'package:flutter/material.dart';

class Constants {
  Constants._();

  static const String defaultAppFontFamily = 'FjallaOne';

  //Home Page
  //Category Widget
  static const String nowPlayingTitle = 'Now Playing';
  static const FontWeight nowPlayingTitleFontWeight = FontWeight.bold;
  static const double nowPlayingTitleTextSize = 20;
  static const Color nowPlayingTitleTextColor = Colors.white;

  static const String nowPlayingTextButtonTitle = 'See All';
  static const FontWeight nowPlayingTextButtonFontWeight = FontWeight.bold;
  static const double nowPlayingTextButtonTitleTextSize = 16;
  static const Color nowPlayingTextButtonTitleTextColor = Colors.grey;

  //Coming Soon Widget
  static const String comingSoonTitle = 'Coming Soon';
  static const FontWeight comingSoonTitleFontWeight = FontWeight.bold;
  static const double comingSoonTitleTextSize = 20;
  static const Color comingSoonTitleTextColor = Colors.white;

  static const String comingSoonTextButtonTitle = 'See All';
  static const FontWeight comingSoonTextButtonFontWeight = FontWeight.bold;
  static const double comingSoonTextButtonTitleTextSize = 16;
  static const Color comingSoonTextButtonTitleTextColor = Colors.grey;

  //Header Widget
  static const String headerWidgetTitleText = 'Welcome';
  static const TextStyle headerWidgetTitleTextStyle =
      TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold);

  static const String headerWidgetSubtitleText = 'What do you want to watch?';
  static const TextStyle headerWidgetSubtitleTextStyle =
      TextStyle(fontSize: 18, color: Colors.white);

  //Movie Item Widget
  static const TextStyle movieNameTextStyle = TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'FjallaOne');
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

  //Search Widget
  static const String textFieldHintText = 'Search movie';
  static TextStyle textFieldHintTextStyle =
      TextStyle(fontSize: 14, color: Colors.grey.withOpacity(0.7));

  //Detail Page
  //Detail Image Widget
  static const TextStyle detailPageMovieNameTextStyle = TextStyle(
      fontFamily: 'FjallaOne', fontWeight: FontWeight.bold, fontSize: 20);
  //Detail Summary Widget
  static const String detailSummaryTitleText = 'Storyboard';
  static const TextStyle detailSummaryTitleTextStyle =
      TextStyle(fontFamily: 'FjallaOne', fontSize: 18);
  static const TextStyle detailSummaryMovieSummaryTextStyle =
      TextStyle(fontFamily: 'FjallaOne', fontSize: 16);
}
