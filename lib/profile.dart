import  'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model.dart';


class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [

                    Container(
                      height: 220,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2019/06/01/22/41/river-4245261_1280.jpg"
                              )
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 160,left: 140),
                      child: CircleAvatar(
                        radius: 60,

                        backgroundColor: Colors.white,


                        child: CircleAvatar(
                          radius: 55,
                          backgroundImage: NetworkImage(

                            "https://cdn.pixabay.com/photo/2021/01/21/16/44/model-5937809_640.jpg",),
                        ),
                      ),

                    ),

                  ],
                ),
                SizedBox(height: 10,),
                Text('Melvin',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),
                SizedBox(height: 5,),
                Text('melvin34@gmail.com',style: TextStyle(fontSize: 22,color: Colors.black),),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 120,right: 15),
                      child: Icon(CupertinoIcons.bell,size: 30,),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Icon(CupertinoIcons.heart,size: 30,),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Icon(CupertinoIcons.photo,size: 30,),
                    ),

                    Icon(CupertinoIcons.person_2,size: 30,),

                  ],
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 140,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: profilemodel.length,
                      itemBuilder: (context,index){
                        return InkWell(
                          onTap: (){},
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                  profilemodel[index]['image'],
                                ),

                                SizedBox(height: 5,),
                                Text(profilemodel[index]['name'],style: TextStyle(fontSize: 19),)
                              ],
                            ),
                          ),

                        );


                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30,bottom: 10),
                  child: Text('My Favourite',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                ),
                SizedBox(
                  height: 160,
                  child: ListView.builder(scrollDirection: Axis.horizontal,
                      itemCount: favourite.length,
                      itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(

                            height: 110,
                            width: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: favourite[index]['image']
                                )
                            ),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 134),
                                  child: Opacity(
                                    opacity: 0.5,
                                    child: Container(

                                      alignment: Alignment.bottomCenter,
                                      width: 160,
                                      height: 10,


                                      decoration: BoxDecoration(

                                        color: Colors.black,
                                      ),

                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 134,left: 2,right: 2),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(favourite[index]['name'],style: TextStyle(
                                          fontSize: 10,color: Colors.white
                                      ),),
                                      Icon(CupertinoIcons.heart_fill,color: Colors.red,size: 10,)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );

                      }),
                )




              ],
            ),
          ),
        )

    );
  }
}