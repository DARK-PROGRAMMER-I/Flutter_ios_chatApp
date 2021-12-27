import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.green[500]
          ) ,
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(


        child: CupertinoTabScaffold(
          resizeToAvoidBottomInset: true,
          tabBar: CupertinoTabBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.chat),
              label: "Chats", tooltip: "Chats",
              ),
              BottomNavigationBarItem(icon: Icon(Icons.phone_outlined) , label: "Phone", tooltip: "Phone"),
              BottomNavigationBarItem(icon: Icon(Icons.people_alt_outlined), label: "Contacts",tooltip: "Contacts"),
              BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: "Settings", tooltip: "Settings")


            ],
          ),
          tabBuilder: (BuildContext context, int index){
            return Container(
              child: Center(
                child: Text("$index"),

              ),
            );
          },
        )


    );
  }
}
