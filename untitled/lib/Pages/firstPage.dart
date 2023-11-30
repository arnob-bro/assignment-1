import 'package:flutter/material.dart';
import 'package:untitled/Pages/secondPage.dart';
class BookList extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text("Book List"),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: ListTile(
                leading: Image.asset("assets/images/harry potter.jpg"),
                title: Text("Harry Potter"),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("J.K. Rowling"),
                    Text("Rating: 8.6"),
                  ],
                ),
                onTap: () {
                  print("tapped");
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Book("Harry Potter","J.K. Rowling",8.6,"assets/images/harry potter.jpg","200BDT","1250BDT","................")),
                  );
                }
            ),
          ),

          Card(
            child: ListTile(
                leading: Image.asset("assets/images/agni.jpg"),
                title: Text("Agni Purush"),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Kazi Anwar Hossain"),
                    Text("Rating: 9.5"),
                  ],
                ),
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Book("Agni Purush","Kazi Anwar Hossain",9.5,"assets/images/agni.jpg","60BDT","200BDT","..........")),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}
