import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant_app_test/screens/agents_screen.dart';
import 'package:valorant_app_test/screens/home_screen.dart';

import '../cubit/characters_cubit.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    context.read<CharactersCubit>().getCharchter();
    super.initState();
  }

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    List _pages = [const HomeScreen(), const AgentsScreen()];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: _pages.elementAt(_selectedIndex)),
        bottomNavigationBar: BottomNavigationBar(
          // unselectedLabelStyle: const TextStyle(color: Color(0xFFFFFBF5)),
          unselectedFontSize: 14,
          selectedFontSize: 17,
          unselectedItemColor: const Color(0xFFFD4556),
          selectedItemColor: const Color(0xFFFFFBF5),
          backgroundColor: const Color(0xFF53212B),
          selectedIconTheme: const IconThemeData(size: 30),

          currentIndex: _selectedIndex,
          onTap: _onItemTapped,

          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.work,
                color: Color(0xFFFFFBF5),
              ),
              label: 'Roles',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Color(0xFFFFFBF5),
              ),
              label: 'Agents',
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
