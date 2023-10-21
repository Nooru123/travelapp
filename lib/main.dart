import 'package:flutter/material.dart';

import 'page1.dart';
void main(){
  runApp(travelapp());

}
class travelapp extends StatelessWidget {
  const travelapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
    );
  }
}
