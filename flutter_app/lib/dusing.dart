import 'package:flutter/material.dart';
import 'package:flutter_app/index.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'chung-user.dart';


class Dus extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        toolbarHeight: 70,
        title: const Text('ديكورات',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: Colors.white
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 25,
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
      ),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6.0
                      ),
                    ]
                ),
                constraints: BoxConstraints(maxHeight: 150.0),
                child: Material(
                  color: Colors.indigo,
                  child: TabBar(
                    unselectedLabelColor: Colors.black,
                    labelColor: Colors.amber,
                    indicatorColor: Colors.amber,
                    tabs: [
                      Tab(text: "ghj",),
                      Tab(text: "ghj",),
                      Tab(text: "ghj",),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Icon(Icons.directions_car),
                    Icon(Icons.directions_transit),
                    Icon(Icons.directions_bike),
                  ],
                ),
              ),
            ],
          ),

        )
    );
  }
}
