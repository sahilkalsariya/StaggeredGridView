import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'global.dart';

class detailsPic extends StatefulWidget {
  const detailsPic({Key? key}) : super(key: key);

  @override
  State<detailsPic> createState() => _detailsPicState();
}

class _detailsPicState extends State<detailsPic> {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text("${data['title']}"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: StaggeredGrid.count(
          crossAxisCount: 6,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
          children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 5,
              child: Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),//color: Colors.redAccent
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network("${data['image1']}",height: 150,fit: BoxFit.cover,),
                    Text("${data['name1']}",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.black),),
                  ],
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 4.5,
              child: Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network("${data['image2']}",height: 200,fit: BoxFit.cover,),
                      Text("${data['name2']}",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 5,
              child: Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network("${data['image3']}",height: 190,fit: BoxFit.cover,),
                    Text("${data['name3']}",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.black),),
                  ],
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 4.5,
              child: Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network("${data['image4']}",height: 210,fit: BoxFit.cover,),
                    Text("${data['name4']}",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.black),),
                  ],
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 5,
              child: Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network("${data['image5']}",height: 210,fit: BoxFit.cover,),
                    Text("${data['name5']}",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.black),),
                  ],
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 4.7,
              child: Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network("${data['image6']}",height: 200,fit: BoxFit.cover,),
                    Text("${data['name6']}",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.black),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
