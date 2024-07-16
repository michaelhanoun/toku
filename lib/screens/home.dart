import 'package:flutter/material.dart';
import 'package:toku/components/category.dart';
import 'package:toku/screens/colors.dart';
import 'package:toku/screens/family_members.dart';
import 'package:toku/screens/number.dart';
import 'package:toku/screens/phrases.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        title: const Text(
          'Toku',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: Column(
        children: [
          Category(
            name: 'Number',
            color: const Color(0xffEF9235),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Numbers()));
            },
          ),
          Category(
            name: 'FamilyMembers',
            color: const Color(0xff558B37),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FamilyMembers()));
            },
          ),
          Category(
            name: 'Colors',
            color: const Color(0xff79359F),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ColorsPage()));
            },
          ),
          Category(
            name: 'Phrases',
            color: const Color(0xff50ADC7),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Phrases()));
            },
          ),
        ],
      ),
    );
  }
}
