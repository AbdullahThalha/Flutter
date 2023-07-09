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
   Homepage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      ///Scaffold :works on individual screen
      appBar: AppBar(
        title: Text('Home Screen'),
        backgroundColor: Colors.green,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child:Column(
            children: [
              Wrap(///wrapping is like row ,but in wrapping if overlapping something
                spacing: 30,
                children: [
                  Text('hi'),
                  Text('hi'),
                  Text('hi'),
                  Text('hi'),
                  Text('hi'),

                ],
              )


            ],
          ),

        ),
      ),



    );
  }


}



