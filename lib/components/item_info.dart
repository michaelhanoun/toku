import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/model/item.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item, required this.color});
  final Item item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: color,
        child: Row(children: [
          Container(
              color: const Color(0xffFEF6DB), child: Image.asset(item.image!)),
          Expanded(
            child: ItemInf(
              item: item,
              color: color,
            ),
          ),
        ]));
  }
}

class ItemInf extends StatelessWidget {
  const ItemInf({super.key, required this.item, required this.color});

  final Item item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      padding: const EdgeInsets.only(left: 16.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  item.jpName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    item.enName,
                    style: const TextStyle(color: Colors.white, fontSize: 18))
              ],
            ),
          ),
          //    const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource(item.sound));
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 30,
                )),
          )
        ],
      ),
    );
  }
}
