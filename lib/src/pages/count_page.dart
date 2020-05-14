import 'package:flutter/material.dart';


class CountPage extends StatefulWidget {

  @override
  createState() => _CountPageState();
}

class _CountPageState extends State<CountPage>{

  final _estiloTexto = new TextStyle( fontSize: 30);
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numeros de taps:', style: _estiloTexto),
            Text('$_count', style: _estiloTexto),
          ],
        )
      ),
      floatingActionButton: _createButtons()
    );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
       children: <Widget>[
         SizedBox(width: 30.0),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _subtract),
        SizedBox(width: 5.0,),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _add)
      ],
    );
  }

  void _add() {
    setState(() => _count++);
  }

  void _reset() {
    setState(() => _count= 0);
  }

  void _subtract() {
    setState(() => _count--);
  }
}