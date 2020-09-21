import 'package:flutter/material.dart';
import 'package:flutter_book_bottom/Addbook.dart';
import 'package:flutter_book_bottom/Searchbook.dart';
import 'package:flutter_book_bottom/Viewbook.dart';
class Mybook extends StatefulWidget {
  @override
  _MybookState createState() => _MybookState();
}

class _MybookState extends State<Mybook> {
  var units=[Addbook(),Viewbook(),Searchbook()];
  int _var=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Book App"),
        ),
        body:units[_var] ,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
            currentIndex: _var,
            backgroundColor: Colors.purpleAccent,
            onTap: (index){
            setState(() {
              _var=index;
            });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.add),
              title: Text("Add Book")),
            BottomNavigationBarItem(
                icon: Icon(Icons.view_list),
            title: Text("View book List")),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
            title: Text("Search Book"))]),

      ),
    );
  }
}
