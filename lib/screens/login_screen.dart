import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/Cubit_auth/Login/Login_cubit.dart';
import '../cubit/Cubit_auth/Login/Login_state.dart';


//import '../services/login_service.dart';

class loginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {


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

            BlocProvider(

              create: (context) => UserCubitLogin(),
              child: BlocConsumer<UserCubitLogin, LoginUserState>(builder: (context, state) {
                var logController= UserCubitLogin.get(context);

                return

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
                        child:

                        ListView(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextFormField(
                                  controller:logController.phoneControllerInLoginBody  ,

                                  keyboardType:TextInputType.number,
                                  decoration: const InputDecoration(
                                      suffixIcon: Icon(Icons.phone,color: Colors.grey,),
                                      label: Text('Phone',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:Color(0xff8B0000),
                                      ),)
                                  ),
                                ),
                                TextFormField(
                                  controller: logController.passwordControllerInLoginBody ,

                                  obscureText: logController.passwordVisibale,
                                  decoration: InputDecoration(
                                      suffixIcon: IconButton(onPressed: (){
                                        logController.passwordVisibaleCHANGE();


                                      },
                                          icon:Icon(
                                              logController.passwordVisibale ? Icons.visibility : Icons.visibility_off
                                          )

                                      ),
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
                                    logController.login(context: context,
                                        phoneNumber: logController.phoneControllerInLoginBody.text,
                                        password: logController.passwordControllerInLoginBody.text);
                                    //LoginService().loginProduct(phone: phone!, password: password!, token: token!);
                                    //login(PhoneController.text, PasswordController.text);

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
                                        logController.getToRegScreen(context: context);
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
                  );
              }, listener: (context, state) {

              },),
            )


          ],
        ));
  }
}