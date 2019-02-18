import 'package:flutter/material.dart';

class PlayGroundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.orangeAccent,
      height: 50,
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.info,
                color: Colors.white,
              ),
              Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
            ],
          ),
          Text(
            'This is a text',
            style: Theme.of(context).textTheme.subhead,
          )
        ],
      ),
//      decoration: BoxDecoration(
//        shape: BoxShape.circle,
//        color: Colors.blue,
//        boxShadow: [
//          BoxShadow(
//              color: Colors.redAccent,
//              blurRadius: 5,
//              offset: Offset(0.3, 1),
//              spreadRadius: 0.3)
//        ],
//      ),
    );
  }
}