import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BuildImage extends StatelessWidget {
  const BuildImage(this.pickedValue, {super.key});

  final int pickedValue;

  pickImage() {
    if (pickedValue == 1) {
      return 'images/Children-1.png';
    } else if (pickedValue == 2) {
      return 'images/Children-2.png';
    } else if (pickedValue == 3) {
      return 'images/Children-3.png';
    } else if (pickedValue == 4) {
      return 'images/Children-4.png';
    } else if (pickedValue == 5) {
      return 'images/Children-5.png';
    } else {
      return 'images/Children-1.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 1),
      child: Image.asset(
        pickImage(),
        fit: BoxFit.fitHeight,
      ),
    ));
  }
}

class BuildImagePointer extends StatelessWidget {
  const BuildImagePointer(this.pickedValue, {super.key});

  final int pickedValue;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      BuildImagePointerDot(pickedValue, 1),
      BuildImagePointerDot(pickedValue, 2),
      BuildImagePointerDot(pickedValue, 3),
      BuildImagePointerDot(pickedValue, 4),
      BuildImagePointerDot(pickedValue, 5),
    ]);
  }
}

class BuildImagePointerDot extends StatelessWidget {
  const BuildImagePointerDot(this.pickedValue, this.currentValue, {super.key});

  final int pickedValue;
  final int currentValue;

  IconData pickFilled() {
    if (pickedValue == currentValue) {
      return CupertinoIcons.circle_filled;
    } else {
      return CupertinoIcons.circle;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        child: Icon(
          pickFilled(),
          color: Colors.lightGreen,
          size: 13,
        ));
  }
}
