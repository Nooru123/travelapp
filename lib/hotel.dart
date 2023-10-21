import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'model.dart';


class hotelpage extends StatefulWidget {
  const hotelpage({super.key});

  @override
  State<hotelpage> createState() => _hotelpageState();
}

class _hotelpageState extends State<hotelpage> {
  // double initialRating =2.0;
  // double onRatingUpdate =5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 770,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount:hotelmodel.length ,
                      itemBuilder: (context,index){
                        return InkWell(
                          onTap: (){},
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 280,
                                width: 280,
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 160,
                                      width: 700,


                                      decoration: BoxDecoration(
                                        borderRadius:  BorderRadius.all(Radius.circular(14)),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image:
                                          hotelmodel[index]['image'],
                                        ),
                                      ),
                                    ),
                                    ListTile(

                                      title: Text(hotelmodel[index]['name']),

                                      subtitle:Text(hotelmodel[index]['about']),
                                      trailing:Text(hotelmodel[index]['price'],style: TextStyle(color: Colors.black),),


                                    ),
                                    RatingBar.builder(
                                        initialRating: hotelmodel[index]['star'].toDouble(),
                                        allowHalfRating: true,
                                        // glowColor: Colors.yellowAccent,
                                        itemBuilder: (context,_){
                                          return Icon(Icons.star,color: Colors.yellowAccent,);

                                        }, onRatingUpdate: (newRating){
                                      hotelmodel[index]['star']=newRating.toDouble();


                                    })
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );

                      }),
                ),
              ],
            ),
          )
      ),
    );
  }
}