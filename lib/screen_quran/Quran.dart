import 'package:flutter/material.dart';

import '../data.dart';
import '../widget/ItemContainer2.dart';

class Quran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "فَضْلُ  قِرَاءةِ  الْقُرْآن",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color.fromRGBO(13, 16, 56, 1),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/qur2.jpg"), fit: BoxFit.cover),
          ),
          padding: EdgeInsets.all(10),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ListView(
              children: [
                ...qur.map((e) {
                  return ItemContainer2(
                    e.qur,
                    Colors.black,
                  );
                }).toList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
