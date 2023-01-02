import 'package:flutter/material.dart';
import 'package:flutter_movie_app/constants/constants.dart';
import 'package:flutter_movie_app/constants/ui_colors.dart';

class AllMoviesSearchWidget extends StatelessWidget {
  AllMoviesSearchWidget({required this.sortedIndex, required this.sortOnTapped, Key? key}) : super(key: key);
  int sortedIndex;
  void Function() sortOnTapped;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Stack(
          children: [
            TextField(
              cursorColor: UIColors.textFieldCursorColor,
              decoration: InputDecoration(
                  fillColor: UIColors.inputDecorationFillColor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        const BorderSide(width: 0, style: BorderStyle.none),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 20,
                  ),
                  prefixIcon: const Icon(
                    Icons.search_outlined,
                    color: UIColors.textFieldPrefixIconColor,
                    size: 30,
                  ),
                  hintText: Constants.textFieldHintText,
                  hintStyle: Constants.textFieldHintTextStyle),
            ),
            Positioned(
                bottom: 6,
                right: 12,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: InkWell(
                    onTap: sortOnTapped,
                    child: const Icon(
                      Icons.sort_outlined,
                      color: UIColors.sortIconColor,
                      size: 25,
                    ),
                  ),
                ))
          ],
        ));
  }
}