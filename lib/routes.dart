import 'package:ecommerce/core/constants/routesname.dart';
import 'package:ecommerce/view/screen/login.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
   AppRoute.login: (context) => Login(),

};