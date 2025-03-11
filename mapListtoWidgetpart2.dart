import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MapLearn extends StatelessWidget {
 var arrD=[
  {
    'name':"Mia",
    'mobno':"+92 301 1234567",
    'unread':"0",
  },
   {
    'name':"Amelia",
    'mobno':"+92 312 9876543",
    'unread':"1",
  },
   {
    'name':"Ethan",
    'mobno':"+92 333 7654321",
    'unread':"2",
  },
   {
    'name':"Sophia",
    'mobno':"+92 345 2345678",
    'unread':"3",
  },
   {
    'name':"Liam",
    'mobno':"+92 321 8765432",
    'unread':"4",
  },
   {
    'name':"Isla",
    'mobno':"+92 321 8765432",
    'unread':"5",
  },
   {
    'name':"Noah",
    'mobno':"+92 304 4567890",
    'unread':"6",
  },
   {
    'name':"Ava",
    'mobno':"+92 336 6781234",
    'unread':"7",
  },
   {
    'name':"Zoo",
    'mobno':"+92 315 4328765",
    'unread':"8",
  },
   {
    'name':"Jackson",
    'mobno':"+92 343 6543210",
    'unread':"9",
  },
   {
    'name':"Mia",
    'mobno':"+92 322 7890123",
    'unread':"10",
  },
  {
    'name':"Mia",
    'mobno':"+92 301 1234567",
    'unread':"0",
  },
   {
    'name':"Amelia",
    'mobno':"+92 312 9876543",
    'unread':"1",
  },
   {
    'name':"Ethan",
    'mobno':"+92 333 7654321",
    'unread':"2",
  },
   {
    'name':"Sophia",
    'mobno':"+92 345 2345678",
    'unread':"3",
  },
   {
    'name':"Liam",
    'mobno':"+92 321 8765432",
    'unread':"4",
  },
   {
    'name':"Isla",
    'mobno':"+92 321 8765432",
    'unread':"5",
  },
 ];

  MapLearn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text(
          'Mapping List To Widget Concept',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        backgroundColor: Colors.deepPurpleAccent.shade100,
        centerTitle: true,
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          
          children: arrD.map((value){
            return Card(
               margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0), // Space between each item
            elevation: 2, // Subtle elevation for shadow effect
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),),
              child: ListTile(
                leading: Icon(Icons.girl),
                title: Text(value['name'].toString()),
                subtitle:Text(value['mobno'].toString()), 
                trailing: CircleAvatar( 
                  radius: 18,
                  backgroundColor: Colors.deepPurple.shade200,
                  child: Text(value['unread'].toString())),
                  
              ),
            );
          }).toList(),
        ),
      )
      
    );
  }
// here i am using data of my choice differ data but same design use of .map function
}