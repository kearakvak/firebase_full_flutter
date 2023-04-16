import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

import 'profile_page.dart';
import 'settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ScreenHiddenDrawer> _pages = [];
     // final user = FirebaseAuth.instance.currentUser!;
     final myTextStyle=TextStyle(
  fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
     );
          final myTextStyleselected=TextStyle(
  fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color.fromARGB(255, 36, 177, 8),
     );
  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Profile Page ",
          baseStyle: myTextStyle,
          selectedStyle: myTextStyleselected,
          colorLineSelected: Colors.red,
        ),
        ProfilePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Setting Page ",
          baseStyle: myTextStyle,
          selectedStyle: myTextStyleselected,
          colorLineSelected: Colors.blue,
        ),
        const SettingsPage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Color.fromARGB(255, 228, 225, 86),
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 40,
      // child: Scaffold(
      //   body: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Text(
      //           "Signed in as: " + user.email!,
      //         ),
      //         MaterialButton(
      //           onPressed: () {
      //             FirebaseAuth.instance.signOut();
      //           },
      //           color: Colors.blue.shade200,
      //           child: Text('sign Out'),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
