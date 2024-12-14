import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/main.dart';
import 'package:statemanagement/myconsumerclasss.dart';

class second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var counter = context.read<Myconsumerclasss>();
          counter.addnumber();
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Consumer<Myconsumerclasss>(
        builder: (context, value, child) => Column(
          children: [
            Text(
              "${value.mylist.last}",
              style: TextStyle(color: Colors.white),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: value.mylist.length,
                  itemBuilder: (context, index) {
                    return Text("${value.mylist[index]}");
                  }),
            )
          ],
        ),
      ),
    );
  }
}
