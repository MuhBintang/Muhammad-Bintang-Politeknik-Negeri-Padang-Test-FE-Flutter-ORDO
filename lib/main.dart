import 'package:flutter/material.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:testflutterordo/menu_page/beranda.dart';
import 'package:testflutterordo/menu_page/beranda_denda.dart';
import 'package:testflutterordo/menu_page/beranda_tidak_ada_pesan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Flutter ORDO',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const BottomNavBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BottomNavBar extends StatefulWidget {
  final int initialIndex;
  const BottomNavBar({Key? key, this.initialIndex = 0}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    const MenuScreen(),
    const BerandaScreen(),
    const BerandaDendaScreen(),
    Center(child: Icon(Icons.shopping_basket_rounded, size: 150)),
    Center(child: Icon(Icons.person_rounded, size: 150)),
  ];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: _selectedIndex,
        showElevation: false,
        onItemSelected: _onItemTapped,
        
        items: [
          FlashyTabBarItem(
            icon: Icon(Icons.home_rounded, color: Color(0xFF324b34),),
            title: Text('Home'),
            activeColor: Color(0xFF324b34)
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.apartment_rounded, color: Color(0xFF324b34),),
            title: Text('Browse'),
            activeColor: Color(0xFF324b34)
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.list_rounded, color: Color(0xFF324b34),),
            title: Text('Catatan'),
            activeColor: Color(0xFF324b34)
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.shopping_basket_rounded, color: Color(0xFF324b34),),
            title: Text('Keranjang'),
            activeColor: Color(0xFF324b34)
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.person_rounded, color: Color(0xFF324b34),),
            title: Text('Profile'),
            activeColor: Color(0xFF324b34)
          ),
        ],
      ),
    );
  }
}
