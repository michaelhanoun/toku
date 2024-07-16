import 'package:flutter/material.dart';
import 'package:toku/components/item_info.dart';
import 'package:toku/model/item.dart';

class Phrases extends StatelessWidget {
  const Phrases({super.key});
  final List<Item> colors = const [
    Item(
      sound: 'sounds/colors/black.wav',
      jpName: 'Burakku',
      enName: 'black',
    ),
    Item(
      sound: 'sounds/colors/brown.wav',
      jpName: 'Chairo',
      enName: 'brown',
    ),
    Item(
      sound: 'sounds/colors/dusty yellow.wav',
      jpName: 'Hokori ppoi kiiro',
      enName: 'dusty yellow',
    ),
    Item(
      sound: 'sounds/colors/gray.wav',
      jpName: 'Gurē',
      enName: 'gray',
    ),
    Item(
      sound: 'sounds/colors/green.wav',
      jpName: 'Midori',
      enName: 'green',
    ),
    Item(
      sound: 'sounds/colors/red.wav',
      jpName: 'Aka',
      enName: 'red',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Color',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ItemInf(
            item: colors[index],
            color: const Color(0xff50ADC7),
          );
        },
      ),
    );
  }
}
