import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_quran_kareem/screen_quran/DuaaahEndalQaran.dart';
import 'package:flutter_quran_kareem/screen_quran/God_Names.dart';
import 'package:flutter_quran_kareem/screen_quran/Morning_and_evening_memories.dart';
import 'package:flutter_quran_kareem/screen_quran/Prayers_from_the_Quran_and_Sunnah.dart';
import 'package:flutter_quran_kareem/screen_quran/Quran.dart';
import 'package:flutter_quran_kareem/screen_quran/Remembering_after_prayer.dart';
import 'package:flutter_quran_kareem/screen_quran/Tsabeh.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'quran kareem',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(13, 16, 56, 1),
        title: const Text(
          '﴾ مَا أَنْزَلْنَا عَلَيْكَ الْقُرْآنَ لِتَشْقَى ﴿',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              child: Text(''),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(13, 16, 56, 1),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/quran.png',
                    ),
                  )),
            ),
            ListTile(
              title: const Text(
                'فَضْلُ قِرَاءةِ الْقُرْآنِ',
                textDirection: TextDirection.rtl,
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (c) {
                    return Quran();
                  }),
                );
              },
              trailing: Icon(Icons.favorite),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                'دُعَاءُ خَتْمِ القُرْآنِ الكَريمَِ',
                textDirection: TextDirection.rtl,
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (c) {
                    return DuaaahEndalQaran();
                  }),
                );
              },
              trailing: const Icon(Icons.favorite_border),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                'الإنستجرام',
                textDirection: TextDirection.rtl,
              ),
              onTap: () =>
                  launch('https://instagram.com/qur__a_n?utm_medium=copy_link'),
              trailing: Icon(Icons.link),
            ),
            Divider(),
            ListTile(
              title: Text(
                'التيليجرام',
                textDirection: TextDirection.rtl,
              ),
              onTap: () => launch('https://t.me/QuranKareem78'),
              trailing: Icon(Icons.near_me),
            ),
            Divider(),
            ListTile(
              title: Text(
                'تَسْجِيلَ خُرُوجٍ',
                textDirection: TextDirection.rtl,
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        backgroundColor: Colors.white,
                        title: Text(
                          'هل تريد تسجيل الخروج ؟',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        actions: [
                          FlatButton(
                            onPressed: () => Navigator.pop(context, false),
                            child: Text(
                              '         لا',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          FlatButton(
                            onPressed: () => Navigator.pop(context, true),
                            child: Text(
                              '            نعم',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                        ],
                      );
                    }).then((exit) {
                  if (exit == null) return;

                  if (exit) {
                    SystemNavigator.pop();
                  } else {}
                });
              },
              trailing: Icon(Icons.exit_to_app),
            ),
          ],
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/qur2.jpg"), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 250,
                height: 300,
              ),
              SizedBox(
                height: 0,
              ),
              RaisedButton(
                child: Text(
                  "أسماء الله الحسنى",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                color: Colors.white,
                textColor: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 20,
                focusElevation: 30,
                hoverElevation: 30,
                onPressed: () {
                  //dart : single thread
                  Navigator.of(context).push(
                    //بقدر اصل لاي انهيريدت Widget
                    MaterialPageRoute(builder: (c) {
                      //builder :Widget بترجع fun بتاخد
                      return God_Names();
                      //automaticallyImplyLeading: false,: back button لتعطيل ال
                    }),
                    //Future :await + async بنسخدمها لما الكود الي بعد ال نفيجيتر ما بعتمد عليه لو بعتمد عليه هنستخدم
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: Text(
                  "أذكار الصباح والمساء",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                color: Colors.white,
                textColor: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 43),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 20,
                focusElevation: 30,
                hoverElevation: 30,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (c) {
                      return Morning_and_evening_memories();
                    }),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: const Text(
                  "تسابيح",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                color: Colors.white,
                textColor: Colors.black,
                padding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 93),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 20,
                focusElevation: 30,
                hoverElevation: 30,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (c) {
                      return Tsabeh();
                    }),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: const Text(
                  "أدعية من القرأن والسنة",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                color: Colors.white,
                textColor: Colors.black,
                padding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 20,
                focusElevation: 30,
                hoverElevation: 30,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (c) {
                      return Prayers_from_the_Quran_and_Sunnah();
                    }),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: const Text(
                  "أذكار بعد الصلاة",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                color: Colors.white,
                textColor: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 20,
                focusElevation: 30,
                hoverElevation: 30,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (c) {
                      return Remembering_after_prayer();
                    }),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
