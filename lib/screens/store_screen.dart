import 'package:flutter/material.dart';
import 'package:untitled17/screens/profile_screen.dart';
import 'package:untitled17/screens/setting_screen.dart';

import '../custom/custom_search.dart';
import 'cart_screen.dart';

import 'clothes_prosucts_screen.dart';
import 'electronic_product_screen.dart';
import 'favourite_screen.dart';

import 'food_product_screen.dart';
import 'library_product_screen.dart';
/*void main() {
  runApp(const StoreScreen());
}
class StoreScreen extends StatelessWidget {
  const StoreScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StoreScreen(),
    );
  }
}*/
class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  int _selectedIndex=0;
  List itemsC=[
    {"image":"images/Screenshot 2024-12-01 205854.png","title":"11:11 Library","location":"DAMASCUS,ALHAMRA","id":"400"},
    {"image":"images/photo_2024-12-02_19-13-18.jpg","title":"Selena Botique","location":"DAMASCUS,ALSHAALA","id":"60"},
    {"image":"images/photo_2024-11-30_11-23-27.jpg","title":"Electronic World","location":"DAMASCUS,ALMAZZEH","id":"1009"},
    {"image":"images/photo_2024-11-30_11-23-27 (2).jpg","title":"Yum Yum","location":"DAMASCUS,BARZA","id":"2004"},
  ];
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
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            iconSize: 40,
            selectedItemColor: Color(0xff8B0000),
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: const [

              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home",),
              // BottomNavigationBarItem(icon:Icon(Icons.shopping_bag_outlined),label: "buy",),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: "Profile",)
              ,
              BottomNavigationBarItem(
                icon: Icon(Icons.add_shopping_cart), label: "Cart",)
              ,
              BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Setting",)
              ,
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favourite",)
            ]),
        // key: scaffoldKey, //
        key: scaffoldKey,
        appBar: AppBar(
            backgroundColor: Colors.grey,
            title:const Row(children: [Text("DREAM STORE",style: TextStyle(color: Color(0xff8B0000),fontWeight:FontWeight.bold ),),],
            )),

        body: SingleChildScrollView(
            child:   Column(

                children: [
                  Row(
                    children: [
                      Container(margin: const EdgeInsets.only(left: 50,bottom: 5,top: 5) ,height: 50,width: 320,
                        child: TextField(
                          decoration: InputDecoration(


                            prefixIcon:  IconButton(onPressed: (){
                              showSearch(context: context, delegate: CustomSearch());
                            },
                              icon:Icon(Icons.search,color: Color(0xff8B0000)),),
                            // hintText: "S  `",

                            hintStyle: TextStyle(color: Color(0xffc0c0c0)),
                            border: const OutlineInputBorder(),
                          ),
                        ),),
                      /* Container(margin: const EdgeInsets.only(bottom: 10,left: 10),
                        child: const Icon(Icons.menu,size: 40,),)
*/
                    ],
                  ), SingleChildScrollView(child: Column( children: [
                    Container(padding:const EdgeInsets.only(top:10),margin: const EdgeInsets.only(right: 280,top: 20),
                      child: const Text("Categorie",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,)),
                    ),
                    SingleChildScrollView(scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [/*Column(
                            children: [
                              Container(height: 80,width:80,margin: const EdgeInsets.only(top:30,left: 5,right: 5,bottom: 5),padding: const EdgeInsets.all(10),decoration: BoxDecoration( color:Colors.grey[400],borderRadius: const BorderRadius.all(Radius.circular(4000)),border: Border.all(color:Colors.black)),
                                  child:Icon(Icons.phone_android_sharp,size: 30,color:Colors.red)),
                              const Text("Mobile",style:TextStyle(fontSize: 18),)]),
                        */
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=> ElectronicProductsScreen()));
                            },
                            child: Column(
                                children: [
                                  Container(height: 80,width: 80,margin: const EdgeInsets.only(top:30,left: 5,right: 5,bottom: 5),padding: const EdgeInsets.all(10),decoration: BoxDecoration( color:Colors.grey[400],borderRadius: const BorderRadius.all(Radius.circular(4000)),border: Border.all(color:Colors.black)),
                                    child:  const Icon(Icons.electric_bolt_sharp,size: 30,color:Color(0xff8B0000),) ,),
                                  const Text("Electronic",style:TextStyle(fontSize: 18))]),
                          ),

                          /*  Column(
                            children: [
                                Container(height: 80,width: 80,margin: const EdgeInsets.only(top:30,left: 5,right: 5,bottom: 5),padding: const EdgeInsets.all(10),decoration: BoxDecoration( color:Colors.grey[400],borderRadius: const BorderRadius.all(Radius.circular(4000)),border: Border.all(color:Colors.black)),
                                    child:const Icon(Icons.shopping_bag_outlined,size: 30,color: Colors.red,)),
                                const Text("Shopping ",style:TextStyle(fontSize: 18),)]
                          ),*/
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>FoodProductsScreen()));
                            },
                            child:  Column(
                                children: [
                                  Container(height: 80,width: 80,margin: const EdgeInsets.only(top:30,left: 5,right: 5,bottom: 5),padding: const EdgeInsets.all(10),decoration: BoxDecoration( color:Colors.grey[400],borderRadius: const BorderRadius.all(Radius.circular(4000)),border: Border.all(color:Colors.black)),
                                      child:const Icon(Icons.fastfood_rounded,size: 30,color:Color(0xff8B0000),)),
                                  const Text("Food",style:TextStyle(fontSize: 18))]),
                          ),

                          /* Column(
                              children: [
                                Container(height: 80,width: 80,margin: const EdgeInsets.only(top:30,left: 5,right: 5,bottom: 5),padding: const EdgeInsets.all(10),decoration: BoxDecoration( color:Colors.grey[400],borderRadius: const BorderRadius.all(Radius.circular(4000)),border: Border.all(color:Colors.black)),
                                    child:const Icon(Icons.smart_toy_sharp,size: 30,color:Colors.red)),
                                const Text("toys",style:TextStyle(fontSize: 18),)]),*/
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>LibraryProductsScreen()));
                            },
                            child: Column(
                              children: [
                                Container(height: 80,width: 80,margin: const EdgeInsets.only(top:30,left: 5,right: 5,bottom: 5),padding: const EdgeInsets.all(10),decoration: BoxDecoration( color:Colors.grey[400],borderRadius: const BorderRadius.all(Radius.circular(4000)),border: Border.all(color:Colors.black)),
                                    child:const Icon(Icons.menu_book_outlined,size: 30,color:Color(0xff8B0000),
                                    )),
                                const Text("Book",style:TextStyle(fontSize: 18),
                                ),

                              ],
                            ) ,
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>ClothesProductsScreen()));
                            },child: Column(
                            children: [
                              Container(height: 80,width: 80,margin: const EdgeInsets.only(top:30,left: 5,right: 5,bottom: 5),padding: const EdgeInsets.all(10),decoration: BoxDecoration( color:Colors.grey[400],borderRadius: const BorderRadius.all(Radius.circular(4000)),border: Border.all(color:Colors.black)),
                                  child:const Icon(Icons.shopping_bag,size: 30,color:Color(0xff8B0000),
                                  )),
                              const Text("Clothes",style:TextStyle(fontSize: 18),
                              ),

                            ],
                          ) ,
                          )

                        ],),
                    ),
                    Container(padding:const EdgeInsets.only(top:10),margin: const EdgeInsets.only(right: 250,top: 20)  , child:  Text("Best Store",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,)),
                    ),
                    Container(height: 10),
                    Container(height: 500,width: 400,
                      child:
                      GridView.builder( itemCount: itemsC.length,shrinkWrap: true,gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 200),itemBuilder: (Context,i){
                        return
                          InkWell(
                              onTap: (){
                                Navigator.push(context,MaterialPageRoute(builder: (context)=>ClothesProductsScreen()));
                              },

                              child: Card(
                                color: Color(0xffc0c0c0),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                child:
                                ListView(children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                          padding: EdgeInsets.all(15),
                                          width: 300,
                                          color: Color(0xff8B0000),
                                          child: Image.asset(itemsC[i]["image"],
                                              height: 90,
                                              fit:BoxFit.fill)),
                                      Text(itemsC[i]["title"],style:  TextStyle(fontSize: 16,fontWeight:FontWeight.bold),),
                                      Container(height: 2),
                                      Text(itemsC[i]["location"],style: TextStyle(fontSize: 14,color: Color(0xff696969),fontWeight: FontWeight.bold),),
                                      Text(itemsC[i]["id"],style: TextStyle(fontSize: 12,color: Color(0xff000000),fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                ],),));


                      },

                      ),)
                  ],)
                  )])));
  }}