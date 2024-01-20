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
  final bool isCorrect;

  CustomButton({
    required this.content,
    required this.onTap,
    required this.onReset,
    required this.isCorrect,
  });

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  Color buttonColor = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      if(widget.isCorrect){
        setState (() {
          buttonColor = Colors.green;
        });
         widget.onTap("Correct") ;
        Future.delayed(const Duration(seconds: 1), (){
          setState(() {
            buttonColor = Colors.yellow;
          });
          widget.onReset();
          });
        }
       else {
          setState(() {
            buttonColor = Colors.red;
            });
              widget.onTap("InCorrect");
              Future.delayed(const Duration(seconds: 1), () {
                setState(() {
                buttonColor = Colors.yellow;
            });
            widget.onReset();
          });
        }
      },
      child: Container(
        width: 200,
        height: 50,
        decoration: BoxDecoration(
        color: buttonColor,
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
