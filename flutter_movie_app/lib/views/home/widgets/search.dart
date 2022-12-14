import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Stack(
          children: [
            TextField(
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                  fillColor: const Color(0xFFF6F8FF),
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
                    color: Colors.blueGrey,
                    size: 30,
                  ),
                  hintText: 'Search movie',
                  hintStyle: TextStyle(
                      fontSize: 14, color: Colors.grey.withOpacity(0.7))),
            ),
            Positioned(
                bottom: 6,
                right: 12,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: const Icon(
                    Icons.mic_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                ))
          ],
        ));
  }
}
