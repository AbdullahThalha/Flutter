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
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
   TextEditingController numberController=TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      ///Scaffold :works on individual screen
      appBar: AppBar(
        title: Text('Home Screen'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.camera)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],

      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children:[
                TextFormField(
                   validator:(String?value){
                     if(value!.isEmpty){
                       return 'enter email';
    }
                     else{
                       return null;
                     }
                     },///for mandotory email and password validator is being used and in number is not being used;
                  controller:emailController,
                  ///obscureText: true,
                  decoration: InputDecoration(
                  hintText: 'email',
                  fillColor:Colors.grey.shade500,
                  filled: true,

                  ),
                ),


                  SizedBox(height: 20,),
                  TextFormField(
                  controller:passwordController,///its mendatory to set controller,validator for every textformfield;

                  decoration: InputDecoration(
                  hintText: 'password',
                  fillColor:Colors.grey.shade500,
                  filled: true,
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(10), topRight:Radius.circular(10) ),

                  )
                  ),


                  ),



                SizedBox(height: 20,),
                TextFormField(
                  controller:numberController,///its mendatory to set controller,validator for every textformfield;

                  decoration: InputDecoration(
                      hintText: 'number',
                      fillColor:Colors.grey.shade500,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(topLeft:Radius.circular(10), topRight:Radius.circular(10) ),

                      )
                  ),


                )



              ]

          ),

        ),
      ),



    );
  }


}



