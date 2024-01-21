import 'package:flutter/material.dart';

class Myicon extends StatelessWidget {
  final IconData myicon;
  const Myicon({super.key, required this.myicon});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.blue,
                Color.fromARGB(255, 17, 62, 139),
              ]),
              shape: BoxShape.circle,
            ),
          ),
          Positioned(
            left: 2,
            top: 1,
            child: Container(
              height: 35,
              width: 35,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(
                myicon,
                color: const Color.fromARGB(255, 12, 57, 94),
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
