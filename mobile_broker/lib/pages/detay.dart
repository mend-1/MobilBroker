import 'package:flutter/material.dart';
import 'package:mobile_broker/model/constants.dart';

class Detay extends StatefulWidget {
  const Detay({Key? key}) : super(key: key);

  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[Color(0xFF562f7e), Colors.deepPurpleAccent],
            ),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(top: 80),
          child: Text(
            "Detay",
            style: kWhiteBold,
          ),
        ),
        actions: [],
      ),
    );
  }
}
