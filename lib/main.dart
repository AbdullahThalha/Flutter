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
              ListTile(
                title: Text('Rafat Miraj',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                subtitle: Text('01314000000'),
                leading: Icon(Icons.person,color: Colors.green,size: 24,),///set icon on the left side of title
                trailing: Icon(Icons.call) ,///set icon on right side
                tileColor: Colors.grey.shade400,
                iconColor: Colors.red,
                onTap: (){

                },


              ),
              SizedBox(height: 10,),
              ListTile(
                title: Text('Rafat Miraj',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                subtitle: Text('01314000000'),
                leading: Icon(Icons.person),///set icon on the left side of title
                trailing: Icon(Icons.call) ,///set icon on right side
                tileColor: Colors.grey.shade400,


              ),
              SizedBox(height: 10,),
              ListTile(
                title: Text('Rafat Miraj',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                subtitle: Text('01314000000'),
                leading: Icon(Icons.person),///set icon on the left side of title
                trailing: Icon(Icons.call) ,///set icon on right side
                tileColor: Colors.grey.shade400,


              ),
              SizedBox(height: 10,),
              ListTile(
                title: Text('Rafat Miraj',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                subtitle: Text('01314000000'),
                leading: Icon(Icons.person),///set icon on the left side of title
                trailing: Icon(Icons.call) ,///set icon on right side
                tileColor: Colors.grey.shade400,


              ),
            ],
          ),

        ),
      ),



    );
  }


}



