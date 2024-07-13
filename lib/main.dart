import 'package:flutter/material.dart';

import 'routes/p1.dart';
import 'routes/p2.dart';

  void main (){
    runApp(App());
  }
  class App extends StatelessWidget {



    @override
    Widget build(BuildContext context) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,

          initialRoute: one.route,
          routes: {

            one.route: (context) => one(),
            sec.route: (context) => sec(),
          }
      );
    }
  }

