import 'package:flutter/material.dart';
class Addbook extends StatefulWidget {
  @override
  _AddbookState createState() => _AddbookState();
}

class _AddbookState extends State<Addbook> {
  TextEditingController name=TextEditingController();
  TextEditingController author=TextEditingController();
  TextEditingController price=TextEditingController();
  var namearray=[];
  var authorarray=[];
  var pricearray=[];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 5.0,),
          TextField(
            style: TextStyle(color: Colors.deepPurple),
            controller: name,
            decoration: InputDecoration(
              hintText: "Enter Name of the Book",
              prefixIcon: Icon(Icons.book),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 5.0,),
          TextField(
            style: TextStyle(color: Colors.deepPurple),
            controller: author,
            decoration: InputDecoration(
              hintText: "Enter Name of the Author",
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 5.0,),
          TextField(
            style: TextStyle(color: Colors.deepPurple),
            controller: price,
            decoration: InputDecoration(
              hintText: "Enter the price",
              prefixIcon: Icon(Icons.attach_money),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 5.0,),
          RaisedButton(onPressed: (){
            var n=name.text;
            var a=author.text;
            var p=price.text;
            setState(() {
              namearray.add(n);
              authorarray.add(a);
              pricearray.add(p);
            });
          },
          child: Text("Submit"),),
          SizedBox(height: 5.0,),
          ListView.builder(
            shrinkWrap: true,
            itemCount: namearray.length==null? 0: namearray.length,
              itemBuilder: (context,index){
                return Card(
                  child: ListTile(
                    title: Text("Book Name:"+namearray[index]),
                    subtitle: Text("Author Name:"+authorarray[index]+"\n"+"Price:"+pricearray[index]),
                    leading: Icon(Icons.book),

                  ),
                );
              })
        ],
      ),
    );
  }
}
