import 'package:flutter/material.dart';
class Searchbook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 5.0,),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter the book name",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 5.0,),
          RaisedButton(onPressed: (){},
          child: Text("SEARCH"),)
        ],
      ),
    );
  }
}

