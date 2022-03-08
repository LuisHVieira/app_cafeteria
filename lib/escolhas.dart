import 'package:app_lanchonete/addIngrediente.dart';
import 'package:app_lanchonete/removeIngrediente.dart';
import 'package:flutter/material.dart';

class Escolhas extends StatefulWidget {
  @override
  const Escolhas({Key? key}) : super(key: key);

  State<Escolhas> createState() => _EscolhasState();
}

class _EscolhasState extends State<Escolhas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('akjdajdjkada'),
        backgroundColor: Colors.purple,
      ),
      body: list_build(),
    );
  }

  Widget list_build() => ListView.builder(
        itemBuilder: ((context, index) {
          return Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.add,
                      color: Colors.greenAccent,
                    ),
                    iconSize: 100,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Add()));
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.remove,
                      color: Colors.red,
                    ),
                    iconSize: 100,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Remove()));
                    },
                  ),
                  const TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple)),
                          labelText: 'Quantidade',
                          labelStyle: TextStyle(color: Colors.purple))),
                ],
              ));
        }),
        itemCount: 1,
      );
}
