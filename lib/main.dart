import 'package:flutter/material.dart';
import 'package:my_login_page/ragister.dart';

import 'login.dart';

void main() {
  runApp(MaterialApp(
initialRoute: 'login' ,
    routes:{ 'login':(context) => MyLogin()
    ,
       'ragister':(context) => MyRagister()},
  ));

}

