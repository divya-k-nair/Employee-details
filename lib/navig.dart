import 'package:employee_details/entry.dart';
import 'package:employee_details/search.dart';
import 'package:employee_details/view.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _mycurrentIndex=0;
  List pages=[Entry(),Search(),View()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,


        body: pages[_mycurrentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index){
            print(index);
            setState(() {
              _mycurrentIndex=index;
            });
          },
          backgroundColor: Colors.lightGreenAccent,
          currentIndex: _mycurrentIndex,

          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box,color: Colors.purpleAccent,size: 30,),
              label: "Entry"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_sharp,color: Colors.purpleAccent,size: 30,),
              label: "Search"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.view_list,color: Colors.purpleAccent,size: 30,),
              label: "Viewall"
            ),
          ],//item
        ),

      ),
    );
  }
}
