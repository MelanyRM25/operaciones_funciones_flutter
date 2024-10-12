import 'package:flutter/material.dart';

class Funcion extends StatefulWidget {
  const Funcion({super.key});

  @override
  State<Funcion> createState() => _FuncionState();
}

class _FuncionState extends State<Funcion> {
  TextEditingController _num1 = TextEditingController();
  TextEditingController _num2 = TextEditingController();
  TextEditingController _resultado = TextEditingController();

  ///FUNCIONES
  void sumar() {
    double num1 = double.parse(_num1.text);
    double num2 = double.parse(_num2.text);
    double suma = num1 + num2;
    _resultado.text = suma.toString();
  }

  void restar() {
    double num1 = double.parse(_num1.text);
    double num2 = double.parse(_num2.text);
    double resta = num1 - num2;
    _resultado.text = resta.toString();
  }

  void multiplicar() {
    double num1 = double.parse(_num1.text);
    double num2 = double.parse(_num2.text);
    double mult = num1 * num2;
    _resultado.text = mult.toString();
  }

  void dividir() {
    double num1 = double.parse(_num1.text);
    double num2 = double.parse(_num2.text);
    double div = num1 / num2;
    _resultado.text = div.toString();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent.shade100,
          title: Text("Operadores con funciones"),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              color: Colors.greenAccent.shade100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextField(
                    controller: _num1,
                    decoration: InputDecoration(
                        labelText: "Numero1",
                        labelStyle: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  TextField(
                    controller: _num2,
                    decoration: InputDecoration(
                        labelText: 'Numero2',
                        labelStyle: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  TextField(
                    controller: _resultado,
                    decoration: InputDecoration(
                        labelText: "Resultado",
                        labelStyle: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: null, child: Text("sumar")),
                ElevatedButton(onPressed: null, child: Text("restar"))
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: null, child: Text("multiplicar")),
                ElevatedButton(onPressed: null, child: Text("dividir"))
              ],
            )
          ],
        ),

        // backgroundColor: Colors.blue.shade200,
      ),
    );
  }
}
