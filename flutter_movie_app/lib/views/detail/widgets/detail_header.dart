import 'package:flutter/material.dart';

class DetailHeader extends StatelessWidget {
  const DetailHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
          padding: const EdgeInsets.only(top: 20, left: 15),
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Colors.transparent),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          )),
    );
  }
}
