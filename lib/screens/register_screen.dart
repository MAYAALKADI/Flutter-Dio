import 'package:flutter/material.dart';
import 'package:untitled17/screens/store_screen.dart';
//import 'package:untitled4/screens/store_screen.dart';
//import '../services/register_service.dart';


class RegScreen extends StatefulWidget {
  @override
  _RegScreenState createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  bool passwordVisibale = false;

  String? firstName;
  String? lastName;
  int? phone;
  String? passowrd;
  String? passowrdConfirmation;
  String? location;
  String?token;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(//thanks for watching
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xff8B0000),
                Color(0xff000000),
              ]),
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 60.0, left: 22),
              child: Text(
                'Create Your\nAccount',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                color: Colors.white,
              ),
              height: double.infinity,
              width: double.infinity,
              child:  Padding(
                padding: const EdgeInsets.only(left: 18.0,right: 18,top: 50),
                child:ListView(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                            onChanged: (data){
                              firstName = data;
                            },
                            decoration:const InputDecoration(
                              //suffixIcon: Icon(Icons.check,color: Colors.grey,),
                                label: Text('First Name',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:Color(0xff8B0000),
                                ),)
                            ),
                          ),
                          TextField(
                            onChanged: (data){
                              lastName = data;
                            },
                            decoration:const InputDecoration(
                              //suffixIcon: Icon(Icons.check,color: Colors.grey,),
                                label: Text('Last Name',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:Color(0xff8B0000),
                                ),)
                            ),
                          ),
                          TextField(
                            onChanged: (data){
                              phone = int.parse(data);
                            },
                            keyboardType:TextInputType.number,
                            decoration:const InputDecoration(
                              //suffixIcon: Icon(Icons.check,color: Colors.grey,),
                                label: Text('Phone',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:Color(0xff8B0000),
                                ),)
                            ),
                          ),
                          TextField(
                            onChanged: (data){
                              passowrd = data;
                            },
                            obscureText: !passwordVisibale,
                            decoration: InputDecoration(
                                suffixIcon:IconButton(onPressed: (){
                                  setState(() {
                                    passwordVisibale=!passwordVisibale;
                                  });},
                                    icon:Icon(
                                        passwordVisibale ? Icons.visibility : Icons.visibility_off
                                    ) ),
                                label:const Text('Password',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:Color(0xff8B0000),
                                ),)
                            ),
                          ),
                          TextField(
                            onChanged: (data){
                              passowrdConfirmation = data;
                            },
                            obscureText: !passwordVisibale,
                            decoration: InputDecoration(
                                suffixIcon: IconButton(onPressed: (){
                                  setState(() {
                                    passwordVisibale=!passwordVisibale;
                                  });},
                                    icon:Icon(
                                        passwordVisibale ? Icons.visibility : Icons.visibility_off
                                    ) ),
                                label:const Text('Confirm Password',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:Color(0xff8B0000),
                                ),)
                            ),
                          ),
                          TextField(
                            onChanged: (data){
                              location = data;
                            },
                            decoration:const InputDecoration(
                              //suffixIcon: Icon(Icons.check,color: Colors.grey,),
                                label: Text('Location',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:Color(0xff8B0000),
                                ),)
                            ),
                          ),
                          const SizedBox(height: 10,),
                          const SizedBox(height: 70,),
                          Container(
                            height: 55,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: const LinearGradient(
                                  colors: [
                                    Color(0xff8B0000),
                                    Color(0xff000000),
                                  ]
                              ),
                            ),
                            child: Center(
                                child:MaterialButton(onPressed: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) =>const StoreScreen()));
                                  print('pressed');
                                 // RegService().regProduct(firstName: firstName!, lastName: lastName!, phone: phone!, passowrd: passowrd!, passowrdConfirmation: passowrdConfirmation!, location: location!, token:token!);
                                  //login(PhoneController.text, PasswordController.text);
                                  print('success');

                                },
                                  child:const Text('REGISTER',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white
                                  ),),
                                ) ),
                          ),
                          /*const SizedBox(height: 80,),
                          const Align(
                            alignment: Alignment.bottomRight,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("Don't have account?",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),),
                                Text("Sign up",style: TextStyle(///done login page
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.black
                                ),),
                              ],
                            ),
                          )*/
                        ],
                      ),
                    ]
                ),
              ),
            ),
          ),
          Padding(padding:const EdgeInsets.only(top: 170, left: 170) ,
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                image:const DecorationImage(image: AssetImage('images/تنزيل.jpeg'),
                  fit: BoxFit.cover,
                ),
                color: Colors.black,
                borderRadius: BorderRadius.circular(1000),
              ),
            ),
          ),
        ],
      ),
    );
  }
}