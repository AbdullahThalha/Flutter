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
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(///listview is just like array;same work again again ;
            itemCount: 5,///builder is basic widget for listview and item count means how much time it will repeat;
            itemBuilder:(builder,context){///itembuilder is a property in which the builder and context should be included
              return Column(
                children: [
                  ListTile(
                    title: Text('Abdullah al Thalha'),
                    subtitle: Text('0131444444'),
                    leading: Icon(Icons.add_call),
                    trailing: Icon(Icons.camera),

                  )
                ],

              );
            },
          separatorBuilder: (BuildContext context, int index) {
              return Divider(
                thickness: 2,
                color: Colors.red,
              );
          },

        ),
      ),



    );
  }


}



