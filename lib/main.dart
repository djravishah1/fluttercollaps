import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: new CustomScrollView(
        slivers: <Widget>[
          new SliverAppBar(
            expandedHeight: 150,
            floating: true,
            pinned: true,
            flexibleSpace: new FlexibleSpaceBar(
              title: new Text('Silver App Bar'),
            ),
          ),
          new SliverFixedExtentList(
            itemExtent: 150,
            delegate: new SliverChildBuilderDelegate((context, index) => new ListTile(title: new Text("List Item $index"),
            )
            ),
            ),
        ],
      ),
    );
  }
}