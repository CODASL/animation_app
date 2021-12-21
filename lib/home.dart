import 'package:flutter/material.dart';
import 'Model/tile_data.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<TileData> dataList = [
      TileData("Animated Container", "/animated_container"),
      TileData("Animated CrossFade", "/animated_crossFade"),
      TileData("Hero Animation", "/hero_animation"),
      TileData("Animated Align", "/align_animation"),
      TileData("Animated DefaultTextStyle", ""),
      TileData("Animated Icon", ""),
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Animations"),
      ),
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {
              if (dataList[index].routeName != "") {
                Navigator.pushNamed(context, dataList[index].routeName);
              }
            },
            title: Text(dataList[index].name),
          );
        },
      ),
    );
  }
}
