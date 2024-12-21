import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled17/screens/register_screen.dart';
import 'login_screen.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,//يعني ال widjet سوف يأخذ كل المساحة المتاحة له في ال container
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xff8B0000),
                  Color(0xff000000),
                ]
            )
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 200,
                child: Lottie.asset('images/Animation - 1732532543269.json'),
              ),
              /* const Padding(
                padding: EdgeInsets.only(top: 200.0),
                child: Image(image: AssetImage('assets/logo.png')),
              ),*/
              const SizedBox(
                height: 50,
              ),
              const Text('Welcome',style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
              ),),
              const SizedBox(height: 30,),
              MaterialButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  loginScreen()));
                },
                child: Container(
                  height: 53,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.white),
                  ),
                  child: const Center(child: Text('LOGIN',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),),
                ),
              ),
              const SizedBox(height: 30,),
              MaterialButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  RegScreen()));
                },
                child: Container(
                  height: 53,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.white),
                  ),
                  child: const Center(child: Text('REGISTER',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),),
                ),
              ),
              //const Spacer(),
              /*const Text('Login with Social Media',style: TextStyle(
                  fontSize: 17,
                  color: Colors.white
              ),),*///
              //const SizedBox(height: 12,),
              //const Image(image: AssetImage('assets/social.png'))
            ]
        ),
      ),

    );
  }
}