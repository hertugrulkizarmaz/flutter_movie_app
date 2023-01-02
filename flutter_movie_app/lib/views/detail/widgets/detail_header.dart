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
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Colors.transparent),
          child: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.amber,
            //remember add color parameter to constants
            size: 35,
          )),
    );
  }
}
