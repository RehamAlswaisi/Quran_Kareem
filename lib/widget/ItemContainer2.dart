import 'package:flutter/material.dart';

class ItemContainer2 extends StatelessWidget {
  String? azkar;
  String? tsabeh;
  String? qur;
  String? qur2;
  String? description2;
  Color? colorb;
  ItemContainer2(this.azkar, this.colorb);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(3),
      margin: EdgeInsets.all(5),
      width: 100,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colorb!.withOpacity(1),
            colorb!.withOpacity(0.7),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        azkar!,
        textDirection: TextDirection.rtl,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
