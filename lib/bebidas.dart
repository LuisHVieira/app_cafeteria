import 'package:flutter/material.dart';

class LachapaBebidas extends StatefulWidget {
  @override
  const LachapaBebidas({Key? key}) : super(key: key);

  State<LachapaBebidas> createState() => _LachapaBebidasState();
}

class _LachapaBebidasState extends State<LachapaBebidas> {
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
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(padding: const EdgeInsets.all(20),  child: Center(child: Text((index + 1).toString()))),
              const Flexible( child: Text('ddjkdjkaddad'),
              ),
              Container(
                child: const Text('daddadaad'),
              )
            ],
          );
        }),
        itemCount: 20,
      );
}
