import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "App",
    home: const Homepage(),
    theme: ThemeData(
      primarySwatch: Colors.purple),
  ));
}

class Homepage extends StatelessWidget {
  const Homepage({super.key}); //Homepage is a widget
  @override //keyword that overrides
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter app"),
        ), //template with some properties
        body: Center(            //used to center its childs
          child: Container(
            padding: const EdgeInsets.all(8),    //To give padding top  
            alignment: Alignment.center,         
            width:100,
            height: 100,
            decoration:  BoxDecoration(   
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [BoxShadow(color:Colors.black,blurRadius: 5,offset: Offset(40, 10))],//box  shadow works with array
              color: Colors.green,
              gradient: const LinearGradient(  
                colors: [Colors.yellow, Colors.pink],
            )),
          child: const Text("I am a box",style: TextStyle(color:Colors.white,
          fontWeight: FontWeight.bold , fontSize: 20),), 
          ),
        ));
  }
}