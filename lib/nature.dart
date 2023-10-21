import 'package:flutter/material.dart';

import 'Detailpage.dart';
import 'detailpage3.dart';
import 'model.dart';
class nature extends StatefulWidget {
  const nature({super.key});

  @override
  State<nature> createState() => _natureState();
}

class _natureState extends State<nature> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Nature'),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail2page(image:attrimodel[index]['image'],
                          titile: attrimodel[index]['titile'], subtitile: attrimodel[index]['subtitile'],
                          description: attrimodel[index]['description'],
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
                                        image: attrimodel[index]['image']
                                    ),
                                  ),
                                ),
                              ),
                              Text( attrimodel[index]['titile'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                              Text(attrimodel[index]['subtitile'],)
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
