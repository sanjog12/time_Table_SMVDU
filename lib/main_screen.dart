import 'package:flutter/material.dart';


class mainscreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _mainscreen();
  }

}

class _mainscreen extends State<mainscreen>{
  int _cindex=0;

  void _onpressed(int index){
    setState(() {
      _cindex =index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Table', textAlign: TextAlign.center, ),
        backgroundColor: Colors.lightBlueAccent,
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.table_chart),
            title: Text('Time Table'),
          )
        ] ,
        currentIndex: _cindex,
        onTap: _onpressed ,
        selectedItemColor: Colors.lightBlue,
      ),
    );
  }
  
}