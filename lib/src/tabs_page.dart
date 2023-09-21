import 'package:flutter/material.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Tabs Page'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.accessibility_new)),
              Tab(icon: Icon(Icons.mail)),
              Tab(icon: Icon(Icons.map)),
              Tab(icon: Icon(Icons.access_alarm)),
            ],
          ),
        ),
        body: TabBarView(children: [
          _buildTabContent(Icons.accessibility_new, 'Accesibilidad'),
          _buildTabContent(Icons.mail, 'Correo'),
          _buildTabContent(Icons.map, 'Mapa'),
          _buildTabContent(Icons.access_alarm, 'Alarma'),
        ],),),
    );
  }

  Widget _buildTabContent(IconData iconData, String text) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 24, color: Colors.red), 
          ),
          Icon(iconData, size: 68),
        ],
      ),
    );
  }
}
