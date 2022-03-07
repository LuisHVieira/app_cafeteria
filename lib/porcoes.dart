import 'package:flutter/material.dart';

class LachapaPorcoes extends StatefulWidget {
  @override
  const LachapaPorcoes({Key? key}) : super(key: key);

  State<LachapaPorcoes> createState() => _LachapaPorcoesState();
}

class _LachapaPorcoesState extends State<LachapaPorcoes> {
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
              Container(
                  padding: const EdgeInsets.all(20),
                  child: Center(child: Text((index + 1).toString()))),
              const Flexible(
                child: Text('ddjkdjkaddad'),
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
