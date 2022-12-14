import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie Name"),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          children: const [],
        ),
      )),
    );
  }
}
