import 'package:flutter/material.dart';
import '../data.dart';
import '../widget/ItemContainer2.dart';

class Prayers_from_the_Quran_and_Sunnah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text(
                  "أدعية من القرأن والسنة",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                backgroundColor: Color.fromRGBO(13, 16, 56, 1),
                bottom: TabBar(
                  tabs: [
                    Tab(
                      text: "أدعية من القرأن",
                      icon: Icon(Icons.favorite),
                    ),
                    Tab(
                      text: "أدعية من السنة",
                      icon: Icon(Icons.favorite),
                    )
                  ],
                  isScrollable: true,
                ),
              ),
              body: Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/qur2.jpg"),
                        fit: BoxFit.cover),
                  ),
                  padding: EdgeInsets.all(10),
                  child: TabBarView(
                    children: [
                      PrayersfromtheQuran(),
                      Adaiaminnalsannah(),
                    ],
                  ),
                ),
              ),
            )));
  }
}

class PrayersfromtheQuran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: [
        ...Quran2.map((e) {
          return ItemContainer2(
            e.azkar,
            Colors.black,
          );
        }).toList(),
      ],
    ));
  }
}

/*children: [

          ...Morning.map((e) {
            return ItemContainer(e.azkar, e.description2, Colors.black,);
          }).toList(),
        ],*/
class Adaiaminnalsannah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: [
        ...Sannah.map((e) {
          return ItemContainer2(
            e.azkar,
            Colors.black,
          );
        }).toList(),
      ],
    ));
  }
}
