import 'package:flutter/material.dart';

void main(){//start the program;
  runApp(MyApp());//entry point of App

}

class MyApp  extends StatelessWidget {
  const MyApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(///basically the entry point of an app
      home: Homepage(),///start the work of screen


    );
  }
}
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(///Scaffold :works on individual screen
      appBar: AppBar(
        title: Text('Home Screen'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_call)),
          IconButton(onPressed: (){}, icon: Icon(Icons.camera)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        ],

      ),

    );
  }
}



