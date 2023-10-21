import 'package:flutter/material.dart';


import 'd4.dart';

import 'model.dart';
class history extends StatefulWidget {
  const history({super.key});

  @override
  State<history> createState() => _natureState();
}

class _natureState extends State<history> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('history'),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>history1(image:attri2model[index]['image'],
                          titile: attri2model[index]['titile'], subtitile: attri2model[index]['subtitile'],
                          description: attri2model[index]['description'],
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
                                        image: attri2model[index]['image']
                                    ),
                                  ),
                                ),
                              ),
                              Text( attri2model[index]['titile'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                              Text(attri2model[index]['subtitile'],)
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
