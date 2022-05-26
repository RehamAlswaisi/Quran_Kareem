import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemContainer extends StatelessWidget {
  String? azkar;
  String? description2;
  Color? colorb;
  ItemContainer(this.azkar, this.description2, this.colorb);

  Future<bool> ShowDescription(BuildContext con) async {
    return (await showDialog(
      context: con,
      builder: (context) => new AlertDialog(
        backgroundColor: Color.fromRGBO(13, 16, 56,1),
        content: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Divider(
                color: Colors.black87,
              ),
              Text(description2!,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 20)),

            ],
          ),
        ),
      ),
    )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ShowDescription(context);
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(2),
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
      ),
    );
  }
}