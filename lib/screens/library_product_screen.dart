import 'package:flutter/material.dart';
import 'package:untitled17/screens/profile_screen.dart';
import 'package:untitled17/screens/setting_screen.dart';
import 'cart_screen.dart';
import 'clothes_details_screen.dart';
import 'favourite_screen.dart';


class LibraryProductsScreen extends StatefulWidget {
  @override
  _LibraryProductsScreenState createState() => _LibraryProductsScreenState();
}

class _LibraryProductsScreenState extends State<LibraryProductsScreen> {
  int _selectedIndex = 0;
  String searchQuery = '';
  List<Map<String, dynamic>> favoriteItems = [];

  final List<Map<String, dynamic>> items = [
    {'name': 'ايكادولي', 'price': 25, 'image': 'images/34068331.jpg'},
    {'name': 'أوبال', 'price': 18, 'image': 'images/41QFl4ZcyaL._AC_UF1000,1000_QL80_.jpg'},
    {'name': 'أمانوس', 'price': 50, 'image': 'images/9789776542495.jpg'},
    {'name': 'كويكول', 'price': 12, 'image': 'images/c6a66e7e-f392-44ec-a844-4f4b3316000b-679.54841511073x1000-HOFvpRhPQMg6BqIKzEXMscPIePCEUGoGE3sTxJJW.jpg'},
    {'name': 'سقطرى', 'price': 30, 'image': 'images/71G7y0z4lcL.jpg'},
    {'name': 'سيروش', 'price': 19, 'image': 'images/bb9d545c4527e134cb14.jpg'},
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
      // Navigate to Home
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
    List<Map<String, dynamic>> filteredItems = items
        .where((item) =>
        item['name'].toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
        'Library Products',
        style: TextStyle(
        fontSize: 30,
        color: Color(0xff8B0000),
    ),
    ),
    ),
    body: Column(
    children: [
    const SizedBox(height: 20),
    Container(
    height: 50,
    width: 320,
    margin: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
    child: TextField(
    onChanged: (value) {
    setState(() {
    searchQuery = value;
    });
    },
    decoration: InputDecoration(
    hoverColor: Colors.red,
    prefixIcon: const Icon(Icons.search, color: Colors.grey),
    hintText: "Search",
    hintStyle: TextStyle(color: Colors.grey[400]),
    border: const OutlineInputBorder(),
    ),
    ),
    ),
    const SizedBox(height: 50),
    Expanded(
    child: GridView.builder(
    itemCount: filteredItems.length,
    clipBehavior: Clip.none,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    childAspectRatio: 1.3,
    crossAxisSpacing: 10,
    mainAxisSpacing: 50,
    ),
    itemBuilder: (context, index) {
    final item = filteredItems[index];
    final isFavorite = favoriteItems.contains(item);
    return Center(
    child: Stack(
    clipBehavior: Clip.none,
    children: [
    Container(
    height: 130,
    width: 220,
    decoration: BoxDecoration(
    boxShadow: [BoxShadow(
    blurRadius: 40,
    color: Colors.grey.withOpacity(0.2),
    spreadRadius: 0,
    offset: const Offset(10, 10),
    ),
    ],
    ),
    child: MaterialButton(
    onPressed: () {
    ///////////////////////////
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            ClothesDetailsScreen(item: item),
      ),
    );
    //////////////////////
    },
    child: Card(
    color: const Color(0xff696969),
    elevation: 10,
    child: Padding(
    padding: const EdgeInsets.only(
    left: 16, right: 16, top: 16),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    item['name'],
    style: const TextStyle(
    color: Colors.black,
    fontSize: 16,
    ),
    ),
    Row(
    mainAxisAlignment:
    MainAxisAlignment.spaceBetween,
    children: [
    Text(
    '\$${item['price']}',
    style: const TextStyle(
      fontSize: 16,
      color: Color(0xff8B0000),
    ),
    ),
      IconButton(
        icon: Icon(
          isFavorite
              ? Icons.favorite
              : Icons.favorite_border,
          color: isFavorite
              ? Colors.red
              : Colors.white,
        ),
        onPressed: () {
          setState(() {
            if (isFavorite) {
              favoriteItems.remove(item);
            } else {
              favoriteItems.add(item);
            }
          });
        },
      ),
    ],
    ),
    ],
    ),
    ),
    ),
    ),
    ),
      Positioned(
        right: 4,
        bottom: 75,
        child: Container(
          height: 100,
          width: 100,decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(item['image']),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(1000),
        ),
        ),
      ),
    ],
    ),
    );
    },
    ),
    ),
    ],
    ),

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
    );
  }
}