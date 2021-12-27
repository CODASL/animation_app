import 'package:animation_app/Animations/list_animation.dart';
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
      TileData("Animated DefaultTextStyle", "/animated_textstyle"),
      TileData("Animated Icon", "/animated_icon"),
      TileData("Animated padding", "/animated_padding"),
      TileData("Routing Animations", "/routing_animations"),
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Animations"),
      ),
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (BuildContext context, int index) {
          return CustomListAnimation(
            index: index,
            child: ListTile(
              onTap: () {
                if (dataList[index].routeName != "") {
                  Navigator.pushNamed(context, dataList[index].routeName);
                }
              },
              title: Text(dataList[index].name),
            ),
          );
        },
      ),
    );
  }
}
