import 'package:example_statefull_navigation_four/sample_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Bottom Up Menu2",
    home: BottomMenu(),
  ));
}

class BottomMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomMenuState();
  }
}

class _BottomMenuState extends State<BottomMenu> {
  var _pagesData = [Contact(), Message(), Camero()];
  int _Selecteditem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Up2")),
      body: Center(
        child: _pagesData[_Selecteditem],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: "Camero")
        ],
        currentIndex: _Selecteditem,
        onTap: (setValue) {
          setState(() {
            _Selecteditem = setValue;
          });
        },
      ),
    );
  }
}
