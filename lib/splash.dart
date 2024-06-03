import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled1/style/colors.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                Home()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 90,
                width: 100,
                child:Image.asset('aseets/document-app.png'),
              ),
              Text('Be Transfer',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
              SizedBox(height: 20,),
              CircularProgressIndicator(color: Colors.white,)
            ],
          ),
        ),
      ),
    );
  }
}