import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavouritePage extends StatelessWidget {
  final List<Map<String, dynamic>> favoriteItems;

  FavouritePage({required this.favoriteItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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