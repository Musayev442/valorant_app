import 'package:flutter/material.dart';
import 'package:valorant_app/screens/category/category.dart';
import 'package:valorant_app/screens/favorite/favorite.dart';
import 'package:valorant_app/screens/home/home_page.dart';
import 'package:valorant_app/screens/user/user.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final menu = [HomePage(), Category(), Favorite(), User()];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text("ValoFan")),
      body: IndexedStack(
        index: _selectedIndex,
        children: menu,
      ),
      bottomNavigationBar: BottomBar(),
    );
  }

  BottomNavigationBar BottomBar() {
    List<String> bottomList = ["home", "apps", "heart", "user"];
    return BottomNavigationBar(
      showSelectedLabels: true,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Theme.of(context).primaryColor,
      items: bottomList
          .map(
            (item) => BottomNavigationBarItem(
              label: "",
              icon: Image.asset(
                'assets/icons/$item.png',
                width: 20,
                color: Colors.white,
              ),
            ),
          )
          .toList(),
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }
}
