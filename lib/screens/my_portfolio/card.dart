import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Cards extends StatelessWidget {
  String one;
  String two;
  Cards({super.key, this.one = '', this.two = ''});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(5),
        child: Center(
          child: Stack(
            children: [
              Container(
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    Colors.blue,
                    Color.fromARGB(255, 17, 62, 139),
                  ]),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Positioned(
                top: 5,
                left: 1,
                child: Container(
                  height: 60,
                  width: 345,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          one,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 17, 62, 139),
                          ),
                        ),
                        Text(
                          two,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
