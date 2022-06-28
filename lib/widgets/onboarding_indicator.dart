import 'package:flutter/material.dart';

class OnboardingIndicator extends StatelessWidget {
  const OnboardingIndicator({
    required this.index,
    required this.currentPageIndex,
    Key? key,
  }) : super(key: key);

  final int index;
  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        width: 25.0,
        height: 10.0,
        decoration: BoxDecoration(
          color: index == currentPageIndex ? const Color(0xffdfbc86) : Colors.grey[300],
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}
