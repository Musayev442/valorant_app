import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
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
      body: const Center(
        child: Text("Center"),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }

  BottomNavigationBar BottomBar() {
    List<String> bottomList = ["home", "apps", "heart", "user"];
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      items: bottomList
          .map(
            (item) => BottomNavigationBarItem(
              label: item,
              icon: Image.asset(
                'icons/h.png',
                width: 20,
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
