import 'package:flutter/material.dart';


import 'd5.dart';

import 'model.dart';
class religious extends StatefulWidget {
  const religious({super.key});

  @override
  State<religious> createState() => _natureState();
}

class _natureState extends State<religious> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Religious'),
      ),

      body: Column(
        children: [

          Expanded(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: 6,

                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InkWell(
                      onTap: (

                          ){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>religious1(image:attri3model[index]['image'],
                          titile: attri3model[index]['titile'], subtitile: attri3model[index]['subtitile'],
                          description: attri3model[index]['description'],
                        )));
                      },
                      child: Card(
                        child: Container(

                          height: 400,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                              color: Colors.white
                          ),
                          child: Column(

                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height:100,
                                  width: 250,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(14)),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: attri3model[index]['image']
                                    ),
                                  ),
                                ),
                              ),
                              Text( attri3model[index]['titile'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                              Text(attri3model[index]['subtitile'],)
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
    );
  }
}
