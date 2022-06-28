import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    required this.title,
    required this.btnTitle,
    required this.onPressed,
    this.btnTitleColor = const Color(0xff51afab),
    Key? key,
  }) : super(key: key);

  final String title;
  final String btnTitle;
  final VoidCallback onPressed;
  final Color btnTitleColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18.0,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              const EdgeInsets.fromLTRB(4, 0, 0, 0),
            ),
          ),
          child: Text(
            btnTitle,
            style: TextStyle(
              color: btnTitleColor,
              fontSize: 18.0,
            ),
          ),
        ),
      ],
    );
  }
}
