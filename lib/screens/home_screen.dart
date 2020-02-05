
import 'package:flutter/material.dart';
import 'package:loja_virtual_ide/tabs/home_tab.dart';
import 'package:loja_virtual_ide/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Container(color: Colors.red),
        Container(color: Colors.green),
        Container(color: Colors.blue),
      ],
    );
  }
}