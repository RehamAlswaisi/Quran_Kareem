import 'package:flutter/material.dart';
import '../data.dart';
import '../widget/ItemGridViewGodName.dart';

class God_Names extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "أسماء الله الحسنى",
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
            child: GridView(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                //الذي ينشئ تخطيطا بعدد ثابت من gridview في المحور المتقاطع.
                maxCrossAxisExtent: 140,
                //والتي تمثل الحد الأقصى لمدى الأدوات في المحور المتقاطع
                crossAxisSpacing: 10,
                //عدد البيكسلات المنطقية بين كل child *المسافة بين كل grid عمودي
                mainAxisSpacing: 10,
                //عدد البيكسلات المنطقية بين كل طفل على طول المحور الرئيسي.*المسافة بين كل grid افقي
                childAspectRatio: 1.5,
                //نسبة المحور المتقاطع إلى مدى المحور الرئيسي لكل طفل.*تقريبا زي ال padding
              ),
              children: [
                // عنا map فيها هخرن فيها key , value من خلال الليست الي عندي
                ...names.map((r) {
                  return ItemGridView(r.name, r.description, Colors.black);
                }).toList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
