import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final List<Widget> buttons;

  MyButton({required this.buttons});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: buttons,
    );
  }
}

class CustomButton extends StatefulWidget {
  final String content;
  final Function(String) onTap;
  final VoidCallback onReset;
  final Color buttonColor;
  final int id;

  CustomButton({
    required this.content,
    required this.onTap,
    required this.onReset,
    required this.buttonColor,
    required this.id,
  });

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isCorrect = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: () {
        //setState(() {
          //isCorrect = widget.id <= 1;
       //});
      
        //widget.onTap(isCorrect ? "Correct" : "InCorrect");
      
        //Future.delayed(const Duration(seconds: 1), () {
          //setState(() {
           //isCorrect = true;
        // });
          //widget.onReset();
        //});
      //},
      onTap: () {
        if (isCorrect = widget.id == 1) {
          setState(() {
            isCorrect = true;
          });
          widget.onTap( "Correct" );
          Future.delayed(const Duration(seconds: 1), () {
            setState(() {
              isCorrect = true;
            });
            widget.onReset();
          });
        } 
          if (isCorrect = widget.id > 1 && widget.id <= 4) {
          setState(() {
            isCorrect = false;
          });
         widget.onTap("InCorrect");
          Future.delayed(const Duration(seconds: 1), () {
            setState(() {
              isCorrect = true;
            });
            widget.onReset();
          });
        }
      },
  
      child: Container(
        width: 200,
        height: 50,
        decoration: BoxDecoration(
          color: isCorrect ?  Colors.yellow : widget.buttonColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            widget.content,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
        ),
      
      ),
    );
  }
}
