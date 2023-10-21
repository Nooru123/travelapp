import 'package:flutter/material.dart';

import 'attri.dart';
import 'nature.dart';

class Detail2page extends StatefulWidget {
  Detail2page({super.key,required this.image,required this.titile,required  this.subtitile,
    required this.description});
  var image,titile,subtitile,description;

  @override
  State<Detail2page> createState() => _Detail2pageState();
}

class _Detail2pageState extends State<Detail2page> {
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
                              nature()));
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