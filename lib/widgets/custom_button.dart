import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.onPressed,
    this.height = 50,
    this.backgroundColor = const Color(0xff51afab),
    this.elevation = 4,
    this.borderColor = Colors.transparent,
    required this.content,
    Key? key,
  }) : super(key: key);

  final double height;
  final Function() onPressed;
  final Color backgroundColor;
  final double elevation;
  final Color borderColor;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(elevation),
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide(
                width: 2,
                color: borderColor,
              ),
            ),
          ),
        ),
        child: content,
      ),
    );
  }
}
