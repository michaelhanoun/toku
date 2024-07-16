import 'package:flutter/material.dart';
import 'package:toku/components/item_info.dart';
import 'package:toku/model/item.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});
  final List<Item> numbers = const [
    Item(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'ichi',
      enName: 'one',
      image: 'assets/images/numbers/number_one.png',
    ),
    Item(
      sound: 'sounds/numbers/number_two_sound.mp3',
      jpName: 'Ni',
      enName: 'two',
      image: 'assets/images/numbers/number_two.png',
    ),
    Item(
      sound: 'sounds/numbers/number_three_sound.mp3',
      jpName: 'San',
      enName: 'three',
      image: 'assets/images/numbers/number_three.png',
    ),
    Item(
      sound: 'sounds/numbers/number_four_sound.mp3',
      jpName: 'Shi',
      enName: 'four',
      image: 'assets/images/numbers/number_four.png',
    ),
    Item(
      sound: 'sounds/numbers/number_five_sound.mp3',
      jpName: 'Go',
      enName: 'five',
      image: 'assets/images/numbers/number_five.png',
    ),
    Item(
      sound: 'sounds/numbers/number_six_sound.mp3',
      jpName: 'Roku',
      enName: 'six',
      image: 'assets/images/numbers/number_six.png',
    ),
    Item(
      sound: 'sounds/numbers/number_seven_sound.mp3',
      jpName: 'Sebun',
      enName: 'seven',
      image: 'assets/images/numbers/number_seven.png',
    ),
    Item(
      sound: 'sounds/numbers/number_eight_sound.mp3',
      jpName: 'hachi',
      enName: 'eight',
      image: 'assets/images/numbers/number_eight.png',
    ),
    Item(
      sound: 'sounds/numbers/number_nine_sound.mp3',
      jpName: 'Kyū',
      enName: 'nine',
      image: 'assets/images/numbers/number_nine.png',
    ),
    Item(
      sound: 'sounds/numbers/number_ten_sound.mp3',
      jpName: 'Jū',
      enName: 'ten',
      image: 'assets/images/numbers/number_ten.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Number',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ItemInfo(item: numbers[index],color:const Color(0xffEF9235),);
        },
      ),
    );
  }
}
