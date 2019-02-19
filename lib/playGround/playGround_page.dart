import 'package:flutter/material.dart';
import 'package:flutter_ui/playGround/pages.dart';

//class PlayGroundPage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Container(
//      color: Colors.orangeAccent,
//      padding: EdgeInsets.all(15.0),
//      child: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          Row(
//            children: <Widget>[
//              Icon(
//                Icons.info,
//                color: Colors.white,
//              ),
//              Icon(
//                Icons.info_outline,
//                color: Colors.white,
//              ),
//            ],
//          ),
//          Text(
//            'This is a text',
//            style: Theme.of(context).textTheme.subhead,
//          ),
//          Row(
//            children: <Widget>[
//              Expanded(
//                child: Text(
//                  'This is a text This is a text This is a text This is a text',
//                  style: Theme.of(context).textTheme.subhead,
//                ),
//              ),
//              Container(
//                child: Image.asset(
//                  'images/girl01.png',
//                  fit: BoxFit.cover,
//                  width: 100,
//                ),
//              ),
//            ],
//          ),
//        ],
//      ),
////      decoration: BoxDecoration(
////        shape: BoxShape.circle,
////        color: Colors.blue,
////        boxShadow: [
////          BoxShadow(
////              color: Colors.redAccent,
////              blurRadius: 5,
////              offset: Offset(0.3, 1),
////              spreadRadius: 0.3)
////        ],
////      ),
//    );
//  }
//}

class PlayGroundPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<PlayGroundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Page(viewModel: viewModels[0], percentVisible: 1.0),
        Page(viewModel: viewModels[1], percentVisible: 1.0),
        Page(viewModel: viewModels[2], percentVisible: 1.0)
      ]),
    );
  }
}
