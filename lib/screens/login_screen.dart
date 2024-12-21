import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:untitled17/screens/register_screen.dart';

//import 'package:http/http.dart' as http;
import 'package:untitled17/screens/store_screen.dart';
//import 'package:untitled4/screens/register_screen.dart';
//import 'package:untitled4/screens/store_screen.dart';

//import '../services/login_service.dart';

class loginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  bool passwordVisibale = false;
  String? password;
  int? phone;
  String?token;
  /*Future login(String phone,String pass)async{
    http.Response response = await http.post(Uri.parse('http://127.0.0.1:8000/api/login'),
     body: <String,String>{
       'phone':phone,
       'password':pass,
     }
     );
     if(response.statusCode == 200){
       var js = jsonDecode(response.body);
       String token = js['token'];
       print('token is $token');
     }else{
       print('Sorry');
     }

   }
   final PhoneController = TextEditingController();
   final PasswordController = TextEditingController();
*/
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
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
                  'Hello\nLogin!',
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
                  padding: const EdgeInsets.only(left: 18, right: 18, top: 50),
                  child:ListView(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                            //controller: PhoneController ,
                            onChanged: (data){
                              phone = int.parse(data);
                            },
                            keyboardType:TextInputType.number,
                            decoration: const InputDecoration(
                                suffixIcon: Icon(Icons.phone,color: Colors.grey,),
                                label: Text('Phone',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:Color(0xff8B0000),
                                ),)
                            ),
                          ),
                          TextField(
                            // controller: PasswordController,
                            onChanged: (data){
                              password = data;
                            },
                            obscureText: !passwordVisibale,
                            decoration: InputDecoration(
                                suffixIcon: IconButton(onPressed: (){

                                  setState(() {
                                    passwordVisibale=!passwordVisibale;
                                  });
                                },
                                    icon:Icon(
                                        passwordVisibale ? Icons.visibility : Icons.visibility_off
                                    ) ),
                                label:const Text('Password',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:Color(0xff8B0000),
                                ),)
                            ),
                          ),
                          const SizedBox(height: 20,),
                          const Align(
                            alignment: Alignment.centerRight,
                            child: Text('Forgot Your Password?',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Color(0xff000000),
                            ),),
                          ),
                          const SizedBox(height: 100,),
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
                            child:MaterialButton(onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) =>const StoreScreen()));
                              print('pressed');
                              //LoginService().loginProduct(phone: phone!, password: password!, token: token!);
                              //login(PhoneController.text, PasswordController.text);
                              print('ok');

                            },
                              child:const  Center(child: Text('LOGIN',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white
                              ),),),),
                          ),
                          const SizedBox(height: 150,),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Text("Don't have account?",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),),
                                MaterialButton(onPressed: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) =>  RegScreen()));
                                },
                                  child:const Text("Register",style: TextStyle(///done login page
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.black
                                  ),),),
                              ],
                            ),
                          )
                        ],
                      ),

                    ],
                  ),


                ),
              ),
            ),
          ],
        ));
  }
}
