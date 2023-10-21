import 'package:flutter/material.dart';

import 'detailpage.dart';
import 'model.dart';




class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var are=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(45)),
                  image: DecorationImage(
                    fit: BoxFit.fill,

                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2018/10/19/12/14/train-3758523_640.jpg"
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 80,),
                    Text("Where You Want to go?",style: TextStyle(color: Colors.black,fontSize: 25),),

                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
                      child: TextField(


                        controller: are ,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(


                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)
                          ),
                          suffixIcon: InkWell(
                              onTap: (){},
                              child: Icon(Icons.search,size: 20,)),
                          labelText: "Search",
                          labelStyle: TextStyle(fontSize: 20,color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 220,left: 10),
                    child: Text("Suggestions",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  ),
                  InkWell(
                      onTap: (){},
                      child: Icon(Icons.arrow_forward))
                ],
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 230,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: gridmodel.length,
                    itemBuilder: (context,index){
                      return InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(image:gridmodel[index]['image'],
                            titile: gridmodel[index]['titile'], subtitile: gridmodel[index]['subtitile'],
                            description: gridmodel[index]['description'],
                          )));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: Container(
                              height: 180,
                              width: 190,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(26)
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height:160,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image:gridmodel[index]['image'] )
                                    ),
                                  ),
                                  Text(gridmodel[index]['titile'],style: TextStyle(fontSize: 18),),
                                  Text(gridmodel[index]['subtitile'],style: TextStyle(fontWeight: FontWeight.bold),),


                                ],
                              ),

                            ),
                          ),
                        ),
                      );

                    }),
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 246,left: 10),
                    child: Text("Top Rated",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  ),
                  InkWell(
                      onTap: (){},
                      child: Icon(Icons.arrow_forward))
                ],
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 230,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Topmodel.length,
                    itemBuilder: (context,index){
                      return InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(image:Topmodel[index]['image'],
                            titile: Topmodel[index]['titile'], subtitile: Topmodel[index]['subtitile'],
                            description: Topmodel[index]['description'],
                          )));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: Container(
                              height: 180,
                              width: 190,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(26)
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height:160,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image:Topmodel[index]['image'] )
                                    ),
                                  ),
                                  Text(Topmodel[index]['titile'],style: TextStyle(fontSize: 18),),
                                  Text(Topmodel[index]['subtitile'],style: TextStyle(fontWeight: FontWeight.bold),),


                                ],
                              ),

                            ),
                          ),
                        ),
                      );

                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}