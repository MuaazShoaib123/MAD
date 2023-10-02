import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState(); }
class _HomeState extends State<Home> { @override
Widget build(BuildContext context) {
  return Scaffold( appBar: AppBar(
    title: Text('Home'),
    actions: <Widget>[ IconButton(
      icon: Icon(Icons.search),
      onPressed: () {}, ),
      IconButton(
        icon: Icon(Icons.more_vert), onPressed: () {},
      ), ],
  flexibleSpace: SafeArea( child: Icon(
    Icons.photo_camera, size: 75.0,
    color: Colors.white70,
  ),
  ),

    leading: IconButton( icon: Icon(Icons.menu), onPressed: () { },

    ),
  ),
    body: OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return _buildPortraitContent();
        } else {
          return _buildLandscapeContent();
        }
      },
    ),
  );
}
Widget _buildPortraitContent() {
  // Build your portrait mode content here
  return Container(
    child: Text(
      'Welcome to Flutter Orientation Handling (Portrait)!',
      style: TextStyle(fontSize: 24.0),
    ),
  );
}
Widget _buildLandscapeContent() {
  // Build your landscape mode content here
  return Container(
    child: Text(
      'Welcome to Flutter Orientation Handling (Landscape)!',
      style: TextStyle(fontSize: 24.0),
    ),
  );
}

}



