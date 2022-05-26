import 'package:flutter/cupertino.dart';
import '../widget/ItemContainerMorningAndEvening.dart';
import '../data.dart';
import 'package:flutter/material.dart';

class Morning_and_evening_memories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 2,
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text(
                  "أذكار الصباح والسماء",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                backgroundColor: Color.fromRGBO(13, 16, 56, 1),
                bottom: TabBar(
                  tabs: [
                    Tab(
                      text: "أذكار الصباح",
                      icon: Icon(Icons.wb_sunny_outlined),
                    ),
                    Tab(
                      text: "أذكار المساء",
                      icon: Icon(Icons.wb_sunny_rounded),
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
                      MorningMemories(),
                      eveningMemories(),
                    ],
                  ),
                ),
              ),
            )));
  }
}

class MorningMemories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:ListView(
        children: [
          ...Morning.map((e) {
            return ItemContainer(e.azkar, e.description2, Colors.black,);
          }).toList(),
        ],
      ),
    );

  }
}

/*children: [

          ...Morning.map((e) {
            return ItemContainer(e.azkar, e.description2, Colors.black,);
          }).toList(),
        ],*/
class eveningMemories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:ListView(
        children: [
          ...Evening.map((e) {
            return ItemContainer(e.azkar, e.description2, Colors.black,);
          }).toList(),
        ],
      ),
    );

  }
}