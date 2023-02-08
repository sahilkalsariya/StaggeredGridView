import "package:flutter/material.dart";
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:untitled1/detailsPic.dart';

import 'global.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/' : (context) => HomePage(),
      'detailPic' : (context) => detailsPic(),
    },
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered Grid View"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: StaggeredGrid.count(
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: [
            StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2, child: Column(
              children: Global.Delhi.map((e) => GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed("detailPic",arguments: e);
                },
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Image.network('${e['image']}'),
                      Text("${e['title']}"),
                    ],
                  ),
                ),
              )).toList(),
            )),
            StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2, child: Column(
              children: Global.Madurai.map((e) => GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed("detailPic",arguments: e);
                },
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Image.network('${e['image']}'),
                      Text("${e['title']}"),
                    ],
                  ),
                ),
              )).toList(),
            )),
            StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2, child: Column(
              children: Global.Jaipur.map((e) => GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed("detailPic",arguments: e);
                },
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Image.network('${e['image']}'),
                      Text("${e['title']}"),
                    ],
                  ),
                ),
              )).toList(),
            )),
            StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2, child: Column(
              children: Global.Mumbai.map((e) => GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed("detailPic",arguments: e);
                },
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Image.network('${e['image']}'),
                      Text("${e['title']}"),
                    ],
                  ),
                ),
              )).toList(),
            )),
            StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 4, child: Column(
              children: Global.Agra.map((e) => GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed("detailPic",arguments: e);
                },
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Image.network('${e['image']}'),
                      Text("${e['title']}"),
                    ],
                  ),
                ),
              )).toList(),
            )),
            StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 4, child: Column(
              children: Global.Bangalore.map((e) => GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed("detailPic",arguments: e);
                },
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Image.network('${e['image']}'),
                      Text("${e['title']}"),
                    ],
                  ),
                ),
              )).toList(),
            )),
          ],
        ),
      ),
    );
  }
}
