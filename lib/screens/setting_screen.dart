import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled17/screens/profile_screen.dart';
import 'package:untitled17/screens/store_screen.dart';
import 'about_us_screen.dart';
import 'cart_screen.dart';
import 'favourite_screen.dart';
import 'language_screen.dart';
import 'notification_screen.dart';
class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
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
        title: Text("Setting", style:TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff8B0000),
            fontSize: 25),
        ),
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.grey[350],
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
            CircleAvatar(
              //child: Padding(padding: EdgeInsets.only(right: 15)),
              radius: 40,
              backgroundImage: AssetImage('images/تنزيل.jpeg'), // ضع صورة البروفايل هنا
            ),
            // SizedBox(height: 16),
            // Text(
            // 'User Name',
            // style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            // ),
            SizedBox(width: 15),
            Expanded(
              child:
              TextField(cursorColor: Color(0xff8B0000),
                decoration:const InputDecoration(
                  label: Text('User Name',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color:Color(0xff8B0000),
                  ),
                  ),

                ),
              ),)],
          ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.notifications),
              iconColor: Color(0xff8B0000),
              title: Text('Notifications', style: TextStyle(color: Color(0xff000000))),
              onTap: () {
                //  Navigator.pushNamed(context, '/notifications');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>NotificationsPage()),
                );
              },
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.language),
              iconColor: Color(0xff8B0000),
              title: Text('Language', style: TextStyle(color: Color(0xff000000))),
              onTap: () {
                // Navigator.pushNamed(context, '/language');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>LanguagePage()),
                );
              },
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.help_rounded),
              iconColor: Color(0xff8B0000),
              title: Text('About Us!', style: TextStyle(color: Color(0xff000000))),
              onTap: () {
                //  Navigator.pushNamed(context, '/aboutus');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>AboutUsPage()),
                );
              },
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.star),
              iconColor: Color(0xff8B0000),
              title: Text('Points', style: TextStyle(color: Color(0xff000000))),

            ),
            Spacer(),
            ElevatedButton.icon(
              onPressed: () {
                // أضف هنا وظيفة تسجيل الخروج
              },
              icon: Icon(Icons.logout),
              label: Text('LogOut',style: TextStyle(color: Color(0xff000000)),),
              style: ElevatedButton.styleFrom(
                iconColor: Color(0xff8B0000),
              ),
            ),
          ],
        ),
      ),
    );
  }
}