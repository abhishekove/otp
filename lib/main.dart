import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OtpPage(),
      theme: new ThemeData(primaryColor: Colors.white),
    );
  }
}
class OtpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 100,),
              Text(
                  "OTP",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
                ),
              ),
              Text(
                "Verification",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white
                ),
              ),
              PinCodeTextField(
                length: 6,
                backgroundColor: Colors.blue[600],
                pinTheme: PinTheme(
                  inactiveColor: Colors.white,
                  activeColor: Colors.white,
                ),
                onChanged: (pin){
                  print("Completed: "+pin);
                },
              ),
              GestureDetector(
                onTap: (){
                  print("object");
                },
                child: Text(
                  "Didn't recieve the OTP?Resend OTP?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                  
                ),
              ),
              SizedBox(height: 200,),
              Material(
                color: Colors.blue[600],
                child: Center(
                  child: Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: CircleBorder(
                        side: BorderSide(
                            width: 5,
                          color: Colors.white
                        ),
                      ),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.check),
                      color: Colors.blue,
                      onPressed: () {},
                      iconSize: 45,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
