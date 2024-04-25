import 'package:flutter/material.dart';

import 'form_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode:ThemeMode.system ,
      
      
      
      debugShowCheckedModeBanner: false,
     theme: 
     ThemeData(appBarTheme: AppBarTheme(backgroundColor: Color.fromARGB(246, 34, 214, 196))),
     
      home: FormScreen(),
      
      
    );
  }
}

