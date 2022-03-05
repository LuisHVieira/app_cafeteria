import 'package:flutter/material.dart';

class LachapaPedido extends StatefulWidget {
  const LachapaPedido({Key? key}) : super(key: key);

  @override
  State<LachapaPedido> createState() => _LachapaPedidoState();
}

class _LachapaPedidoState extends State<LachapaPedido> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('LACHAPA-PEDIDO'),
          backgroundColor: Colors.purple.shade600,
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.add,
                color: Colors.greenAccent,
              ),
              onPressed: () {
                buildAlert();
              },
            ),
          ],
        ),
        body: const Center(
          child: Text('dddada'),
        ));
  }

  Future buildAlert() => showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Center(child: Text('Adicionar')),
          actions: <Widget>[
            Center(
              child: GestureDetector(
                child: const Image(
                  image: AssetImage('media/hamburguer.png'),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            const SizedBox(
              height: 20,
              width: 20,
            ),
            Center(
              child: GestureDetector(
                child: const Image(
                  image: AssetImage('media/french-fries.png'),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            const SizedBox(
              height: 20,
              width: 20,
            ),
            Center(
              child: GestureDetector(
                child: const Image(
                  image: AssetImage('media/soft-drink.png'),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      );
}
