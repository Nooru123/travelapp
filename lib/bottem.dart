import 'package:flutter/material.dart';




import 'attri.dart';
import 'homepage.dart';
import 'hotel.dart';

import 'profile.dart';




class Bottompage extends StatefulWidget {
  const Bottompage({super.key});


  @override
  State<Bottompage> createState() => _BottompageState();
}

class _BottompageState extends State<Bottompage> {
  var are=TextEditingController();
  var selectedIntex=0;

  List pages=[
    homepage(),
    // Stacking (),
    attri(),
    profile(),
    hotelpage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(selectedIntex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black54,

        currentIndex: selectedIntex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black12,),backgroundColor: Colors.white12,label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined,color: Colors.black12,),label: 'Attractions'),
          BottomNavigationBarItem(icon: Icon(Icons.person_pin,color: Colors.black12,),label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.hotel,color: Colors.black12,),label: 'Hotels'),
        ],
        onTap: (index){
          setState(() {
            selectedIntex=index;
          });
        },
      ),
    );
  }
}