import 'package:flutter/material.dart';

class LachapaPedido extends StatefulWidget {
   
  final int table;

  const LachapaPedido({Key? key, required this.table}) : super(key: key);

  @override
  State<LachapaPedido> createState() => _LachapaPedidoState();

}

class _LachapaPedidoState extends State<LachapaPedido> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Mesa ${widget.table.toString()}'),
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
        body: buildList());
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

  Widget buildList() => ListView.builder(
        itemBuilder: ((context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 100,
                child: Center(
                    child: Column(
                  children: [
                    Container(
                        color: Colors.green,
                        height: 100,
                        child: Center(
                          child: Text('${(index + 1).toString()} Batata Completa'),
                        )),
                  ],
                )),
              ),
              Container(
                  color: Colors.amber,
                  height: 100,
                  child: Center(
                    child: Text('${(index + 1).toString()} 0,00'),
                  ))
            ],
          );
        }),
        itemCount: 10,
        padding: const EdgeInsets.all(10),
      );
}
