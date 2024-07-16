import 'package:flutter/material.dart';
import 'package:toku/components/item_info.dart';
import 'package:toku/model/item.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});
  final List<Item> numbers = const [
    Item(
      sound: 'sounds/family_members/grand father.wav',
      jpName: 'Ojīsan',
      enName: 'grandfather',
      image: 'assets/images/family_members/family_grandfather.png',
    ),
    Item(
      sound: 'sounds/family_members/grand mother.wav',
      jpName: 'Sobo',
      enName: 'grandmother',
      image: 'assets/images/family_members/family_grandmother.png',
    ),
    Item(
      sound: 'sounds/family_members/father.wav',
      jpName: 'Chichioya',
      enName: 'father',
      image: 'assets/images/family_members/family_father.png',
    ),
    Item(
      sound: 'sounds/family_members/mother.wav',
      jpName: 'Hahaoya',
      enName: 'mother',
      image: 'assets/images/family_members/family_mother.png',
    ),
    Item(
      sound: 'sounds/family_members/son.wav',
      jpName: 'musuko',
      enName: 'son',
      image: 'assets/images/family_members/family_son.png',
    ),
    Item(
      sound: 'sounds/family_members/daughter.wav',
      jpName: 'musume',
      enName: 'daughter',
      image: 'assets/images/family_members/family_daughter.png',
    ),
    Item(
      sound: 'sounds/family_members/older bother.wav',
      jpName: 'Nīsan',
      enName: 'older brother',
      image: 'assets/images/family_members/family_older_brother.png',
    ),
    Item(
      sound: 'sounds/family_members/older sister.wav',
      jpName: 'ane',
      enName: 'older sister',
      image: 'assets/images/family_members/family_older_sister.png',
    ),
    Item(
      sound: 'sounds/family_members/younger brohter.wav',
      jpName: 'otouto',
      enName: 'younger_brother',
      image: 'assets/images/family_members/family_younger_brother.png',
    ),
    Item(
      sound: 'sounds/family_members/younger sister.wav',
      jpName: 'imouto',
      enName: 'younger_sister',
      image: 'assets/images/family_members/family_younger_sister.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Family members',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ItemInfo(
            item: numbers[index],
            color: const Color(0xff558B37),
          );
        },
      ),
    );
  }
}
