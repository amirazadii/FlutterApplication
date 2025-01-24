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
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer(); // باز کردن ساید منو
            },
          ),
        ),
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 213, 232, 98), // رنگ سربرگ
              ),
              child: Text(
                'Menu Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                setState(() {
                  _currentIndex = 0; // تغییر صفحه به Home
                });
                Navigator.pop(context); // بستن منو
              },
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text('Search'),
              onTap: () {
                setState(() {
                  _currentIndex = 1; // تغییر صفحه به Search
                });
                Navigator.pop(context); // بستن منو
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                setState(() {
                  _currentIndex = 2; // تغییر صفحه به Profile
                });
                Navigator.pop(context); // بستن منو
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: _pages[_currentIndex], // محتوای صفحه فعلی
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 213, 232, 98),
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
