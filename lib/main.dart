import 'package:app_lanchonete/pedido.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'LACHAPA',
      home: LachapaHome(),
    );
  }
}

class LachapaHome extends StatefulWidget {
  const LachapaHome({Key? key}) : super(key: key);

  @override
  State<LachapaHome> createState() => _LachapaHomeState();
}

class _LachapaHomeState extends State<LachapaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('LACHAPA'),
        backgroundColor: Colors.purple.shade600,
      ),
      body: _buildGrid(context),
    );
  }

  Widget _buildGrid(BuildContext context) => GridView.extent(
      maxCrossAxisExtent: 300,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: _buildGridTileList(16));

  List<GestureDetector> _buildGridTileList(int count) => List.generate(
      count,
      (i) => GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LachapaPedido(table: i + 1,)),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(
                      3.0,
                      3.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ),
                ],
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.all(10),
              height: 100,
              child: Center(
                  child: Text(
                (i + 1).toString(),
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 48,
                    fontWeight: FontWeight.bold),
              )),
            ),
          ));
}
