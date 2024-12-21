import 'package:flutter/material.dart';

class ClothesDetailsScreen extends StatefulWidget {
  const ClothesDetailsScreen({super.key, required this.item});

  final Map<String, dynamic> item;

  @override
  State<ClothesDetailsScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ClothesDetailsScreen> {
  int _counter = 30;


  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }
  void _decreasetCounter() {
    setState(() {

      _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0.0,
        iconTheme: IconThemeData(color:Color(0xff8B0000)),
        title:const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text("Product",style: TextStyle(color: Color(0xff8B0000)),),
            Text(" Details",style: TextStyle(color:Color(0xff8B0000)),)],
        ),
        centerTitle: true,),
      body: ListView(
        children: [
          Image.asset(widget.item['image']),
          Container(
              margin:const EdgeInsets.only(top: 20,bottom: 20),
              child: Text(widget.item['name'],textAlign: TextAlign.center,style:TextStyle(fontSize: 27,fontWeight: FontWeight.bold),)),
          Container(
            child: Container(
                margin:const EdgeInsets.only(bottom: 40),
                child: Text('\$${widget.item['price']}',textAlign: TextAlign.center,style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff8B0000)))),),

          Column(
            children: [
              Row(
                children: [
                  const Text("  Color :   ",style: TextStyle(fontSize: 20),),Container(height: 20,width: 20,decoration: BoxDecoration(
                      color:Colors.white,borderRadius: BorderRadius.circular(20)
                  ),),
                  const Text(" White     ",style: TextStyle(fontSize:16 ),),


                  Container(height: 20,width: 20,decoration: BoxDecoration(
                      color:const Color(0xff8B0000),borderRadius: BorderRadius.circular(20)
                  ),),
                  const Text(" Burgundy     ",style: TextStyle(fontSize:16 ),),

                  Container(height: 20,width: 20,decoration: BoxDecoration(
                      color:Colors.black,borderRadius: BorderRadius.circular(20)
                  ),),
                  const Text(" Black",style: TextStyle(fontSize:16 ),)

                ],),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text("  Quantity:   ",style: TextStyle(fontSize: 20),),
                  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),

                ],
              ),
            ],
          ),

          Container(margin:const EdgeInsets.only(top: 50,bottom: 20,right: 70,left: 70),
              height: 50,
              width: 50,
              child:MaterialButton(color:const Color(0xff8B0000),
                textColor: Colors.black,
                onPressed:(){
                  _decreasetCounter();
                },
                child:const Text(" Add to cart",style: TextStyle(fontSize: 18),),)),

          Container(margin:const EdgeInsets.only(top: 1,left: 70,right: 70),
              height: 50,
              width: 50,
              child:MaterialButton(color:const Color(0xff8B0000),
                textColor: Colors.black,
                onPressed:(){
                  _incrementCounter();
                },
                child:const Text(" Cancel from cart",style: TextStyle(fontSize: 18),),)),
        ],
      ),
    );
  }
}

































// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
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
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Text(
//                 item['details'],
//                 style: const TextStyle(fontSize: 16),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
