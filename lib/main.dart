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
   GlobalKey<FormState>formKey= GlobalKey<FormState>();///when we use form ,have to use the line



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
          child: Form(
            key:formKey, ///(this formkey is from the above),///validation for ky

            child: Column(///wrapped it with form as its the parent widget.
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
                       },///for mandotory a textformfield(email,password)validator is being used and in number is not being used;
                    controller:emailController,
                    ///obscureText: true,
                    decoration: InputDecoration(
                    hintText: 'email',///works as watermark on textfield
                    fillColor:Colors.grey.shade500,///for setting the color;
                    filled: true,///if not set true then fillcolor doesnot work

                    ),
                  ),


                    SizedBox(height: 20,),
                    TextFormField(
              validator:(String?value) {
                if (value?.isEmpty??true) {
                  return 'enter password';
                }
                else {
                  return null;
                }
              },
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


                  ),
                  ElevatedButton(onPressed: (){
                    if(formKey.currentState!.validate()){
                      print('Next screen or validation success');
                    }
                  }, child: Text('Next'))



                ],

            ),
          ),

        ),
      ),



    );
  }


}



