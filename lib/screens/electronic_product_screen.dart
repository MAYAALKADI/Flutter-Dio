import 'package:flutter/material.dart';
import 'package:untitled17/screens/profile_screen.dart';
import 'package:untitled17/screens/setting_screen.dart';

import 'cart_screen.dart';
import 'clothes_details_screen.dart';
import 'favourite_screen.dart';



class ElectronicProductsScreen extends StatefulWidget {
  @override
  _ElectronicProductsScreenState createState() => _ElectronicProductsScreenState();
}

class _ElectronicProductsScreenState extends State<ElectronicProductsScreen> {
  bool passwordVisibale = false;
  bool isFavorite = false;
  int _selectedIndex=0;
  //22222222
  final List<Map<String, dynamic>> items = [
    {
      'name': 'HandBag Lv',
      'price': 255,
      'image': 'images/handbag.jpg',
    },
    {
      'name': 'Shoes Nike',
      'price': 180,
      'image': 'images/shoes.jpg',
    },
    {
      'name': 'Watch Rolex',
      'price': 550,
      'image': 'images/watch.jpg',
    },
    {
      'name': 'Sunglasses RayBan',
      'price': 120,
      'image': 'images/sunglasses.jpg',
    },
    {
      'name': 'Jacket Zara',
      'price': 300,
      'image': 'images/jacket.jpg',
    },
    {
      'name': 'Scarf Gucci',
      'price': 95,
      'image': 'images/scarf.jpg',
    },
  ];
  //222222222222

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
    //هون التعديل
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
          MaterialPageRoute(builder: (context) => FavouritePage()),
        );
        break;
      case 5:

        break;
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title:const Text('Clothes Products',style: TextStyle(
          fontSize: 30,
          color: Color(0xff8B0000),

        ),),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 40,
          selectedItemColor: Color(0xff8B0000),
          items: const [

            BottomNavigationBarItem(icon:Icon(Icons.home_filled),label: "Home",),
            BottomNavigationBarItem(icon:  Icon(Icons.person_2_outlined),label: "Profile",)
            ,BottomNavigationBarItem(icon:  Icon(Icons.add_shopping_cart),label: "Cart",)
          ,BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting",),
            BottomNavigationBarItem(icon:  Icon(Icons.favorite),label: "Favourite",)
          ]),

      body:Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 50,width: 320,
            margin: const EdgeInsets.only(left: 10,right: 10,bottom: 5) ,
            child: TextField(
              decoration: InputDecoration(
                hoverColor: Colors.red,
                prefixIcon: const Icon(Icons.search,color: Colors.grey,),
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.grey[400]),
                border: const OutlineInputBorder(),
              ),
            ),),
          const SizedBox(
            height: 50,
          ),
          Expanded(
            child: GridView.builder(
              itemCount: items.length,
              clipBehavior: Clip.none,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 50,
              ),
              itemBuilder: (context, index) {
                final item = items[index];
                return Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 130,
                        width: 220,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 40,
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 0,
                              offset: const Offset(10, 10),
                            ),
                          ],
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ClothesDetailsScreen(item: item),
                              ),
                            );
                          },
                          child: Card(
                            color: const Color(0xff696969),
                            elevation: 10,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
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
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\$${item['price']}',
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff8B0000),
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            isFavorite = !isFavorite;
                                          });
                                        },
                                        icon: const Icon(Icons.favorite),
                                        color: isFavorite ? Colors.red : Colors.white,
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
                          width: 100,
                          decoration: BoxDecoration(
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
      /* body: Center(
        child:Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 130,
              width: 220,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 40,
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 0,
                    offset:const Offset(10, 10),
                  ),
                ],
              ),
              child:MaterialButton(onPressed:(){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> ClothesDetailsScreen()));
              } ,
                child:Card(
                  color: Color(0xff696969),
                  elevation: 10,
                  child: Padding(padding:const EdgeInsets.only(left: 16,right: 16,top: 16) ,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('HandBag Lv',style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),),
                        /* const SizedBox(
                        height: 0,
                      ),*/
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(r'$255',style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff8B0000),
                            ),),
                            IconButton(onPressed: (){},
                              icon:const Icon(Icons.favorite),color: Colors.white,),
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
              bottom: 85,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/photo_2024-11-30_12-04-42.jpg'),fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(1000),
                ),
              ),
            ),


          ],
        ),
      ),*/
    );
  }
}




















// import 'package:flutter/material.dart';
// import 'package:untitled18/screen2.dart';
//
// class MyGridView extends StatefulWidget {
//   @override
//   _MyGridViewState createState() => _MyGridViewState();
// }
//
// class _MyGridViewState extends State<MyGridView> {
//   bool isFavorite = false;
//
//   // قائمة تحتوي على البيانات لكل بطاقة
//   final List<Map<String, dynamic>> items = [
//     {
//       'name': 'HandBag Lv',
//       'price': 255,
//       'image': 'images/handbag.jpg',
//     },
//     {
//       'name': 'Shoes Nike',
//       'price': 180,
//       'image': 'images/shoes.jpg',
//     },
//     {
//       'name': 'Watch Rolex',
//       'price': 550,
//       'image': 'images/watch.jpg',
//     },
//     {
//       'name': 'Sunglasses RayBan',
//       'price': 120,
//       'image': 'images/sunglasses.jpg',
//     },
//     {
//       'name': 'Jacket Zara',
//       'price': 300,
//       'image': 'images/jacket.jpg',
//     },
//     {
//       'name': 'Scarf Gucci',
//       'price': 95,
//       'image': 'images/scarf.jpg',
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: GridView.builder(
//         itemCount: items.length,
//         clipBehavior: Clip.none,
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           childAspectRatio: 1.3,
//           crossAxisSpacing: 10,
//           mainAxisSpacing: 50,
//         ),
//         itemBuilder: (context, index) {
//           final item = items[index];
//           return Center(
//             child: Stack(
//               clipBehavior: Clip.none,
//               children: [
//                 Container(
//                   height: 130,
//                   width: 220,
//                   decoration: BoxDecoration(
//                     boxShadow: [
//                       BoxShadow(
//                         blurRadius: 40,
//                         color: Colors.grey.withOpacity(0.2),
//                         spreadRadius: 0,
//                         offset: const Offset(10, 10),
//                       ),
//                     ],
//                   ),
//                   child: MaterialButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => ClothesDetailsScreen(item: item),
//                         ),
//                       );
//                     },
//                     child: Card(
//                       color: const Color(0xff696969),
//                       elevation: 10,
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               item['name'],
//                               style: const TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 16,
//                               ),
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text(
//                                   '\$${item['price']}',
//                                   style: const TextStyle(
//                                     fontSize: 16,
//                                     color: Color(0xff8B0000),
//                                   ),
//                                 ),
//                                 IconButton(
//                                   onPressed: () {
//                                     setState(() {
//                                       isFavorite = !isFavorite;
//                                     });
//                                   },
//                                   icon: const Icon(Icons.favorite),
//                                   color: isFavorite ? Colors.red : Colors.white,
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   right: 4,
//                   bottom: 75,
//                   child: Container(
//                     height: 100,
//                     width: 100,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(item['image']),
//                         fit: BoxFit.cover,
//                       ),
//                       borderRadius: BorderRadius.circular(1000),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// class ClothesDetailsScreen extends StatelessWidget {
//   final Map<String, dynamic> item;
//
//   const ClothesDetailsScreen({required this.item});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(item['name']),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(item['image']),
//             Text(
//               item['name'],
//               style: const TextStyle(fontSize: 24),
//             ),
//             Text(
//               '\$${item['price']}',
//               style: const TextStyle(fontSize: 20, color: Colors.red),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
