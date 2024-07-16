import 'package:flutter/material.dart';
import 'package:toku/components/item_info.dart';
import 'package:toku/model/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Item> colors = const [
    Item(
      sound: 'sounds/colors/black.wav',
      jpName: 'Burakku',
      enName: 'black',
      image: 'assets/images/colors/color_black.png',
    ),
    Item(
      sound: 'sounds/colors/brown.wav',
      jpName: 'Chairo',
      enName: 'brown',
      image: 'assets/images/colors/color_brown.png',
    ),
    Item(
      sound: 'sounds/colors/dusty yellow.wav',
      jpName: 'Hokori ppoi kiiro',
      enName: 'dusty yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
    ),
    Item(
      sound: 'sounds/colors/gray.wav',
      jpName: 'Gurē',
      enName: 'gray',
      image: 'assets/images/colors/color_gray.png',
    ),
    Item(
      sound: 'sounds/colors/green.wav',
      jpName: 'Midori',
      enName: 'green',
      image: 'assets/images/colors/color_green.png',
    ),
    Item(
      sound: 'sounds/colors/red.wav',
      jpName: 'Aka',
      enName: 'red',
      image: 'assets/images/colors/color_red.png',
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
          return ItemInfo(
            item: colors[index],
            color: const Color(0xff79359F),
          );
        },
      ),
    );
  }
}
