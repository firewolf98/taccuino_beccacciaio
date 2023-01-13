import 'package:flutter/material.dart';
import 'package:taccuino_beccacciaio/pages/profile_page.dart';
import 'package:taccuino_beccacciaio/pages/taccuino_page.dart';

class MyHelloWorldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Taccuino Beccacciaio"),
        ),
        body: ListView(children: [
          Row(children: [
            Expanded(child: Container(height:200,width: 200,decoration:MyBoxDecoration(),child: Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>TaccuinoPage()));
                  },
                  child: Image.asset("assets/images/book.png"),

                )
            ))),
            Expanded(child: Container(height:200,width: 200,decoration:MyBoxDecoration(),child: Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>ProfilePage()));
                  },
                  child: Image.asset("assets/images/cacciatore.png"),

                )
            ))),
          ],),
          Row(children: [
            Expanded(child: Container(height:200,width: 200,decoration:MyBoxDecoration(),child: Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>ProfilePage()));
                  },
                  child: Image.asset("assets/images/dog.png"),

                )
            ))),
            Expanded(child: Container(height:200,width: 200,decoration:MyBoxDecoration(),child: Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>ProfilePage()));
                  },
                  child: Image.asset("assets/images/gallery.png"),

                )
            ))),
          ],),
          Row(children: [
            Expanded(child: Container(height:200,width: 200,decoration:MyBoxDecoration(),child: Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>ProfilePage()));
                  },
                  child: Image.asset("assets/images/archive.png"),

                )
            ))),
            Expanded(child: Container(height:200,width: 200,decoration:MyBoxDecoration(),)),
          ],),

        ],

        ));
  }

  BoxDecoration MyBoxDecoration() {
    return BoxDecoration(
      border: Border.all(),
        color: Colors.orange[50]
    );
  }
}
