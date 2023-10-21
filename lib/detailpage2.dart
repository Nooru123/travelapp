import 'package:flutter/material.dart';
class Detailpage2 extends StatefulWidget {
  Detailpage2({super.key,required this.image,required this.tatile,required  this.subtatile,
    required this.description});
  var image,tatile,subtatile,description;

  @override
  State<Detailpage2> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage2> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
      SingleChildScrollView(
        child: Column(

          children: [
            Image(image: widget.image),
            Text(widget.tatile),
            Text(widget.subtatile),
            Text(widget.description),

          ],
        ),
      ),

    );
  }
}