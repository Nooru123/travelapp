import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'bottem.dart';
import 'homepage.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var are=TextEditingController();
  var are2=TextEditingController();
  var formkey=GlobalKey<FormState>();
  bool pass=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage("https://media.istockphoto.com/id/904172104/photo/weve-made-it-all-this-way-i-am-proud.jpg?s=612x612&w=0&k=20&c=MewnsAhbeGRcMBN9_ZKhThmqPK6c8nCT8XYk5ZM_hdg=")
          ),
        ),
        child: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 150,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: TextFormField(
                    controller: are ,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.attach_file),
                      labelText: "Email",
                      labelStyle: TextStyle(fontSize: 20,color: Colors.black),
                    ),
                    validator: (value){
                      if (value!.isEmpty){
                        return 'please enter your email';
                      }else if (!EmailValidator.validate(value)){
                        return 'please enter a valid email';
                      }
                      return null;
                    },
                    onSaved: (value){

                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
                  child: TextFormField(
                    obscureText: !pass,
                    obscuringCharacter: ".",
                    controller: are2,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              pass=!pass;
                            });
                          },
                          icon: Icon(pass?Icons.visibility:Icons.visibility_off),

                        ),
                        labelText: "Password",labelStyle: TextStyle(fontSize: 20,color: Colors.black)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70,left: 15,right: 15),
                  child: InkWell(
                    onTap: (){
                      if (formkey.currentState!.validate()){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottompage()));

                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("All feals requird")));
                      }
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,

                      ),
                      alignment: Alignment.center,
                      child: Text("Login",style: TextStyle(fontSize: 20,color: Colors.black),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: InkWell(
                    onTap: (){},
                    child: Text("forget password?",style: TextStyle(color: Colors.blue,),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50,left: 15,right: 15),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottompage()));
                    },
                    child: Container(

                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,

                      ),
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image.network("https://cdn.pixabay.com/photo/2015/12/11/11/43/google-1088004_640.png",width: 23,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("Sign UP with Goojgle",style: TextStyle(fontSize: 20,color: Colors.black),),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottompage()));
                    },
                    child: Container(

                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.indigo,

                      ),
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image.network("https://cdn.pixabay.com/photo/2015/05/17/10/51/facebook-770688_640.png",width: 23,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("Sign UP with Facebook",style: TextStyle(fontSize: 20,color: Colors.white),),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),

      ),
    );
  }
}