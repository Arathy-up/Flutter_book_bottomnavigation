import 'package:flutter/material.dart';
class Viewbook extends StatefulWidget {
  @override
  _ViewbookState createState() => _ViewbookState();
}

class _ViewbookState extends State<Viewbook> {
  var bookarray=["xyz","dfgf","gshdghd"];
  var authorarray=["fdsdf","dshfjhd","dbfdbf"];
  var pricearray=["100","345","700"];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: bookarray.length,
          itemBuilder: (context,index){
            return Card(
              child: ListTile(
                title: Text("Book Name:"+bookarray[index]),
                subtitle: Text("Author:"+authorarray[index]+"\n"+"Price:"+pricearray[index]),
                leading: Icon(Icons.book),
                trailing:
                GestureDetector(
                  onTap: (){
                    setState(() {
                      bookarray.removeAt(index);
                      authorarray.removeAt(index);
                      pricearray.removeAt(index);
                    });
                  },
                    child: Icon(Icons.delete)),

              ),
            );
          }),
    );
  }
}
