import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  const CustomButton(
      {
        super.key,
        required this.text,
        required this.onPressed,
        this.top=15,
        this.bottom=15,
        required this.icon,
        this.topRight=0,
        this.bottomRight=0,
        this.topLeft=0,
        this.bottomLeft=0,  this.left=0,  this.right=0,
      });


  final String text;
  final Function onPressed;
  final double top;
  final double bottom;
  final IconData icon;
  final double topRight;
  final double bottomRight;
  final double topLeft;
  final double bottomLeft;
  final double left;
  final double right;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(top: top, bottom:bottom,left: left,right: right),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(bottomRight),
            topRight: Radius.circular(topRight),
            topLeft: Radius.circular(topLeft),
            bottomLeft: Radius.circular(bottomLeft)),
        color: Colors.white,
      ),
      child: IconButton(
        onPressed: () {
          onPressed();
        }, icon: Row(
          children: [
            Icon(icon,color: Colors.black,),
            SizedBox(
              width: 15,
            ),
            Text(text, style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600
                  ),),
          ],
        ),),
    );
  }
}
