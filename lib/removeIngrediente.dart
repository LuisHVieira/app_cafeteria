import 'package:flutter/material.dart';

class Remove extends StatefulWidget {
  @override
  const Remove({Key? key}) : super(key: key);

  State<Remove> createState() => _RemoveState();
}

class _RemoveState extends State<Remove> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('akjdajdjkada'),
        backgroundColor: Colors.purple,
      ),
      body: listBuild(),
    );
  }

 Widget listBuild() => ListView.builder(
        itemBuilder: ((context, index) {
          return GestureDetector(
              onTap: () {
                 Navigator.pop(context);
              },
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(child: Center(child: Text((index + 1).toString()))),
              Flexible(
                  child: Column(
                children: <Widget>[
                  const Padding(padding: EdgeInsets.all(14)),
                  Container(child: const Center(child: Text('X-burguer'))),
                  Container(
                      child: const Text(
                          'fuhfshfkjhfjkshfjshfjshfjkshfjsfhsjfhjshfjshfsfhsjhfsjfkjsfhfhjs'),
                      margin: const EdgeInsets.only(left: 10, right: 10)),
                ],
              )),
              Container(
                child: const Text('daddadaad'),
              )
            ],
          ));
        }),
        itemCount: 20,
      );
}
