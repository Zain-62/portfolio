import 'package:flutter/material.dart';
import 'package:portfolio_zain/screens/my_portfolio/detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          //pseducode
          //body =>container
          //child=>column
          //children[ picture, name, container]

          body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.blue,
                    Color.fromARGB(255, 17, 62, 139),
                  ]),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 18),
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('zain.jpg'),
                  ),
                  const SizedBox(height: 13),
                  const Text(
                    'PORTFOLIO',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25),
                  ),
                  const SizedBox(height: 18),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(60)),
                          color: Colors.white,
                        ),
                        child: const SingleChildScrollView(
                          child: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Detail(),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ))),
    );
  }
}
