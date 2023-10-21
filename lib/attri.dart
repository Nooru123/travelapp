import 'package:flutter/material.dart';
import 'package:travelapp/model.dart';
import 'package:travelapp/nature.dart';

import 'history.dart';
import 'religious.dart';
class attri extends StatefulWidget {
  const attri({super.key});

  @override
  State<attri> createState() => _attriState();
}

class _attriState extends State<attri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40,bottom: 40,left: 15,right: 270),
                    child: Text('Nature',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 50,bottom: 40),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>nature()));

                      },
                        child: Icon(Icons.arrow_forward_rounded,size: 30,)),
                  ),
                ],
              ),
              SizedBox(
                height: 240,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount:attrimodel.length ,
                    itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Card(
                        child: Container(

                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.white
                          ),
                          child: Column(

                            children: [
                              Container(
                                height: 165,
                                width: 260,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(14)),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: attrimodel[index]['image']
                                  ),
                                ),
                              ),
                              Text( attrimodel[index]['titile'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                              Text(attrimodel[index]['subtitile'],)
                            ],
                            
                          ),
                        ),
                      ),
                    );
                    }),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40,bottom: 40,left: 15,right: 260),
                        child: Text('HIstory',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 50,bottom: 40),
                        child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>history()));

                            },
                            child: Icon(Icons.arrow_forward_rounded,size: 30,)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 240,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:attri2model.length ,
                        itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Card(
                              child: Container(

                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(30)),
                                    color: Colors.white
                                ),
                                child: Column(

                                  children: [
                                    Container(
                                      height: 165,
                                      width: 260,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(14)),
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: attri2model[index]['image']
                                        ),
                                      ),
                                    ),
                                    Text( attri2model[index]['titile'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                    Text(attri2model[index]['subtitile'],)
                                  ],

                                ),
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ), Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40,bottom: 40,left: 15,right: 240),
                        child: Text('Religious',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 50,bottom: 40),
                        child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>religious()));

                            },
                            child: Icon(Icons.arrow_forward_rounded,size: 30,)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 240,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:attri2model.length ,
                        itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Card(
                              child: Container(

                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(30)),
                                    color: Colors.white
                                ),
                                child: Column(

                                  children: [
                                    Container(
                                      height: 165,
                                      width: 260,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(14)),
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: attri3model[index]['image']
                                        ),
                                      ),
                                    ),
                                    Text( attri3model[index]['titile'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                    Text(attri3model[index]['subtitile'],)
                                  ],

                                ),
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
