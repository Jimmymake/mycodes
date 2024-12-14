import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/myconsumerclasss.dart';
import 'package:statemanagement/mysecondlist.dart';

class my_app extends StatefulWidget {
  @override
  State<my_app> createState() => _my_appState();
}

class _my_appState extends State<my_app> {
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
        builder: (context, Consumervalue, child) => Column(
          children: [
            Text(
              "${Consumervalue.mylist.last}",
              style: TextStyle(color: Colors.white),
            ),
            ElevatedButton(
                onPressed: () {
                  // var counter = context.watch<Myconsumerclasss>();

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return second();
                  }));
                },
                child: Text("nextpage")),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: Consumervalue.mylist.length,
                  itemBuilder: (context, index) {
                    return Text("${Consumervalue.mylist[index]}");
                  }),
            )
          ],
        ),
      ),
    );
  }
}
