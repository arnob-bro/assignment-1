import 'package:flutter/material.dart';
import 'package:untitled/Pages/firstPage.dart';

class Book extends StatelessWidget{
  String name,author,url,newspaperprice,whitepaperprice,description;
  double rating;
  Book(this.name, this.author, this.rating,this.url,this.newspaperprice,this.whitepaperprice,this.description){

  }
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(url,height: 200,),
          Container(
            height: 100,
            color: Colors.black12,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Book Name: $name", style: TextStyle(fontSize: 20),),
                Text("Writtend By: $author"),
                Text("Rating: $rating"),
              ],
            ),
          ),
          Container(
            height: 2,
          ),
          Container(
            height: 100,
            color: Colors.black12,
            child: Text("Description: $description"),
          ),
          DropdownButton(
            hint: Text("price List"),
            icon: Icon(Icons.keyboard_arrow_down),
            items: [
              DropdownMenuItem(child: Text(" $newspaperprice"), value: "NewsPaper Print $newspaperprice",),
              DropdownMenuItem(child: Text(" $whitepaperprice"), value:"White Paper Print $whitepaperprice" ,),
            ],
            onChanged: (value) {

            },
          ),
          ElevatedButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text("Go Back"),)
        ],
      ),
    );
  }

}