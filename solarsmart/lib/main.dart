import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solar_Smart Risskovteknik',
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  // لیست صفحات
  final List<Widget> _pages = [
    Center(child: Text('Home Page')), // صفحه اصلی
    Center(child: Text('Search Page')), // صفحه جستجو
    Center(child: Text('Profile Page')), // صفحه پروفایل
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Solar Smart'),
        actions: [
          Icon(Icons.notifications),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.language_outlined),
          ),
          Icon(Icons.more_vert),
        ],
        backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      ),
      body: SafeArea(
        child: _pages[_currentIndex], // محتوای صفحه فعلی
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 191, 207, 90),
        selectedItemColor: Colors.white,
        currentIndex: _currentIndex, // اندیس آیتم انتخاب‌شده
        onTap: (index) {
          setState(() {
            _currentIndex = index; // تغییر اندیس و صفحه
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // آیکون خانه
            label: 'Home', // متن خانه
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search), // آیکون جستجو
            label: 'Search', // متن جستجو
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), // آیکون پروفایل
            label: 'Profile', // متن پروفایل
          ),
        ],
      ),
    );
  }
}
