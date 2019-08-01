import 'package:flutter/cupertino.dart';

class Rooms extends StatefulWidget {
  @override
  _RoomsState createState() => _RoomsState();
}

class _RoomsState extends State<Rooms> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Rooms page',
        style: TextStyle(fontSize: 70),
      ),
    );
  }
}
