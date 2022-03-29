import 'package:e_rental/compute_bill.dart';
import 'package:e_rental/login.dart';
import 'package:e_rental/signin.dart';
import 'package:e_rental/payment.dart';
import 'package:e_rental/test_map.dart';
import 'package:e_rental/thanks.dart';
import 'package:e_rental/choose.dart';
import 'package:e_rental/choose_brand_bicycle.dart';
import 'package:e_rental/choose_brand_escooter.dart';
import 'package:e_rental/home_screen.dart';
import 'package:e_rental/rating.dart';
import 'package:e_rental/map.dart';
import 'package:e_rental/waytopay.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'home_screen',
    routes: {
      'home_screen':(context)=>MyHomeScreen(),
      'login':(context)=>MyLogin(),
      'signin':(context)=>MySignIn(),
      'choose':(context)=>MyChoose(),
      //'maps':(context)=>GoogleMapScreen(),
      'maps':(context)=>MyTestMap(),
      'scooterbrand':(context)=>MyScooter(),
      'bikebrand':(context)=>MyBike(),
      'compute':(context)=>Compute(),
      'waytopay':(context)=>Pay(),
      'bill':(context)=>MyBill(),
      'thanks':(context)=>Thanks(),

      //'test_map':(context)=>MySignIn(),
    },
  ));
}


