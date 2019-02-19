import 'package:flutter/material.dart';

final viewModels = [
  PageViewModel(
      Colors.blue, 'images/hotels.png', 'Hotels', 'This is a hotel', null),
  PageViewModel(
      Colors.green, 'images/banks.png', 'Banks', 'This is a bank', null),
  PageViewModel(
      Colors.teal, 'images/stores.png', 'Stores', 'This is a store', null),
];

class Page extends StatelessWidget {
  final PageViewModel viewModel;
  final double percentVisible;

  Page({this.viewModel, this.percentVisible = 1.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: viewModel.color,
      child: Opacity(
        opacity: percentVisible,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Transform(
              transform: Matrix4.translationValues(0.0, 50.0 * (1.0 - percentVisible), 0.0 ),
              child: Padding(
                  padding: EdgeInsets.only(bottom: 25.0),
                  child: Image.asset(
                    viewModel.heroAssetPath,
                    width: 200.0,
                    height: 200.0,
                  )),
            ),
            Transform(
              transform: Matrix4.translationValues(0.0, 30.0 * (1 - percentVisible), 0.0),
              child: Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  viewModel.title,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'FlamanteRoma',
                      fontSize: 34.0),
                ),
              ),
            ),
            Transform(
              transform: Matrix4.translationValues(0.0, 30.0 * (1 - percentVisible), 0.0),
              child: Padding(
                padding: EdgeInsets.only(bottom: 75.0),
                child: Text(
                  viewModel.body,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageViewModel {
  final Color color;
  final String heroAssetPath;
  final String title;
  final String body;
  final String iconAssetPath;

  PageViewModel(this.color, this.heroAssetPath, this.title, this.body,
      this.iconAssetPath);
}
