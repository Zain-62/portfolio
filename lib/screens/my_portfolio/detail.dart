import 'package:flutter/material.dart';
import 'package:portfolio_zain/screens/my_portfolio/card.dart';
import 'package:portfolio_zain/screens/my_portfolio/my_icons.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(
          child: Text(
            '__________ABOUT__________',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 17, 62, 139),
            ),
          ),
        ),
        Row(
          children: [
            const Myicon(myicon: Icons.person),
            Cards(
              one: 'Name',
              two: 'Zain ul abidin',
            )
          ],
        ),
        Row(
          children: [
            const Myicon(myicon: Icons.computer),
            Cards(
              one: 'Email',
              two: 'zainkhan6253@gmail.com',
            )
          ],
        ),
        Row(
          children: [
            const Myicon(myicon: Icons.link),
            Cards(
              one: 'Skill',
              two: 'MObile app developer',
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Center(
          child: Text(
            '________ACADEMIC________',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 17, 62, 139),
            ),
          ),
        ),
        Row(
          children: [
            const Myicon(myicon: Icons.school),
            Cards(
              one: 'Universty',
              two: 'City universty peshawar',
            )
          ],
        ),
        Row(
          children: [
            const Myicon(myicon: Icons.newspaper),
            Cards(
              one: 'Department',
              two: 'Software Engineering',
            )
          ],
        ),
        Row(
          children: [
            const Myicon(myicon: Icons.timer),
            Cards(
              one: 'Semester',
              two: '5th',
            )
          ],
        ),
        const Text(
          'Contacts',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 17, 62, 139),
          ),
        ),
       const SizedBox(
          width: 110,
          child: Divider(
            color: Color.fromARGB(255, 17, 62, 139),
            thickness: 2,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 700,
                          child: Image.asset(
                            'whatsapp.png',
                          ),
                        );
                      });
                },
                child:const Myicon(myicon: Icons.phone)),
            const Myicon(myicon: Icons.link),
          ],
        )
      ],
    );
  }
}
