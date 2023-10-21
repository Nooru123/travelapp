import 'package:flutter/material.dart';
import 'package:travelapp/religious.dart';

import 'attri.dart';

class religious1 extends StatefulWidget {
  religious1({super.key,required this.image,required this.titile,required  this.subtitile,
    required this.description});
  var image,titile,subtitile,description;

  @override
  State<religious1> createState() => _religious1State();
}

class _religious1State extends State<religious1> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
      SingleChildScrollView(
        child: Column(

          children: [
            Stack(children: [
              Image(image: widget.image),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: InkWell(
                    onTap: (){

                    },
                    child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>
                              religious()));
                        },
                        child: Icon(Icons.arrow_back,size: 35,))),

              )
            ], ),
            Text(widget.titile,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            Text(widget.subtitile,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text(widget.description),

          ],
        ),
      ),

    );
  }
}