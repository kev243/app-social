import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:socialappui/pages/home.dart';
import 'package:socialappui/utils/constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    UserHome(),
    UserHome(),
    UserHome(),
    UserHome(),
    UserHome(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomNavBar,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_outlined,
                ),
                label: 'search'),
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.all(5),
                decoration:
                    BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                child: Icon(
                  Icons.add,
                  color: backgroundColor,
                ),
              ),
              label: 'add',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.comment,
                  
                ),
                 label: 'chat',
                
               ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.circleUser,
              ),
              label: 'account',
            ),
          ],
        ));
  }
}
