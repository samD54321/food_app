import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/home/homepage.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _selectedTab=0;
  final List<Widget> _tabs = [
    HomePage(),
    BlocProvider(
      create: (context) => UserCubit(),
      child: User(),
    )
  ];

  void _onTabSelected(int tabIndex) {
    setState(() {
      _selectedTab = tabIndex;
      saveInstanceState(index: tabIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        type: BottomNavigationBarType.fixed,
        onTap: _onTabSelected,
        backgroundColor: const Color(0xFFFFFFFF),
        selectedItemColor: const Color(0xFF000000),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: const Color(0xFF000000)),
              label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: const Color(0xFF000000)),
            label: 'User',
          ),
        ],

      )
    );
  }
}