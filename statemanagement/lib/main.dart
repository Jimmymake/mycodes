import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/home.dart';
import 'package:statemanagement/myconsumerclasss.dart';
import 'package:statemanagement/mysecondlist.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => Myconsumerclasss(), //change builder to create
      child: Consumer<Myconsumerclasss>(
          builder: (context, provider, child) => mywidget())));
}

class mywidget extends StatelessWidget {
  const mywidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
        ),
        // ),home: my_app(),
        // home: ChangeNotifierProvider(create: (context)=>Myconsumerclasss(),child: my_app(),)
        home: my_app());
  }
}
