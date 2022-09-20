import 'package:androidios_stting/appstor/gamefirstScreen.dart';
import 'package:androidios_stting/appstor/tabbarView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'botomnavigationbar.dart';
import 'firstScreen.dart';

class bottomber_Screen extends StatefulWidget {
  const bottomber_Screen({Key? key}) : super(key: key);

  @override
  State<bottomber_Screen> createState() => _bottomber_ScreenState();
}

class _bottomber_ScreenState extends State<bottomber_Screen> {
  List WidgetsList=[home(),GameFirst_Scree(),home(),home()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: WidgetsList[Provider.of<botoomnavigationbar>(context,listen: true).i],
          bottomNavigationBar:BottomNavigationBar(
          onTap:(value){
           Provider.of<botoomnavigationbar>(context,listen:false).changeicon(value);
        },
          currentIndex:Provider.of<botoomnavigationbar>(context,listen:true).i,
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.green,
          items:[
            BottomNavigationBarItem(icon:Icon(Icons.apps),label:"Apps"),
            BottomNavigationBarItem(icon:Icon(CupertinoIcons.game_controller),label:"Games"),
            BottomNavigationBarItem(icon:Icon(Icons.local_movies_sharp),label:"Movies & Tv"),
            BottomNavigationBarItem(icon:Icon(Icons.book_outlined),label:"Books"),
          ],
        ),
     ),
    );
  }
}
