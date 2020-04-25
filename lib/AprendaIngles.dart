import 'package:app10aprendaingles/Animais.dart';
import 'package:app10aprendaingles/Numeros.dart';
import 'package:app10aprendaingles/Vogais.dart';
import 'package:flutter/material.dart';

class AprendaIngles extends StatefulWidget {
  @override
  _AprendaInglesState createState() => _AprendaInglesState();
}

class _AprendaInglesState extends State<AprendaIngles>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
        length: 3,
        vsync: this,
        initialIndex: 1
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aprenda Inglês"),
        bottom:
        TabBar(
            controller: _tabController,
            indicatorWeight: 4,
            indicatorColor: Colors.white,
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            tabs: <Widget>[
                  Tab(
                    text: "Animais",
                  ),
                  Tab(
                    text: "Números",
                  ),
                  Tab(
                    text: "Vogais",
                  ),
              ]
        ),
      ),
      body: TabBarView(
        controller: _tabController,
          children: <Widget>[
            animaisPage(),
            numerosPage(),
            vogaisPage()
          ]
      ),
    );
  }
}
