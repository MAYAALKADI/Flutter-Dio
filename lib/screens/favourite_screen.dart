import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled17/screens/profile_screen.dart';
import 'package:untitled17/screens/setting_screen.dart';
import 'package:untitled17/screens/store_screen.dart';

import 'cart_screen.dart';

class FavouritePage extends StatefulWidget {
  final List<Map<String, dynamic>> favoriteItems;
  FavouritePage({required this.favoriteItems});

  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  int _selectedIndex = 0;
  List<Map<String, dynamic>> favoriteItems = [];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => StoreScreen()),
        // );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfilePage()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CartPage()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SettingPage()),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FavouritePage(favoriteItems: favoriteItems)),
        );
        break;
      case 5:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 40,
        selectedItemColor: Color(0xff8B0000),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favourite"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Favourite Items',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color:Color(0xff8B0000),

          ),
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: ListView.builder(
        itemCount: favoriteItems.length,
        itemBuilder: (context, index) {
          final item = favoriteItems[index];
          return Container(
              color: Colors.grey[300],
              height: 80,
              child: ListTile(
                // return ListTile(
                leading: Container(
                  height: 100, // تعديل ارتفاع الصورة
                  width: 180,// تعديل عرض الصورة
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(item['image']),

                      // fit: BoxFit.cover,

                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                title: Text(item['name'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                subtitle: Text('\$${item['price']}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color:Color(0xff08B0000),
                  ),
                ),
              )  );
        },
      ),
    );
  }
}