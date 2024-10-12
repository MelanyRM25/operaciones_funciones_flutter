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
          backgroundColor: Colors.lightBlueAccent.shade100,
          title: Text("Operaciones con funciones"),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 88, 164, 187),
                const Color.fromARGB(134, 54, 64, 177)
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Column(
            children: [
              Container(
                padding: new EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 330,
                color: Colors.greenAccent.shade100,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Primer numero",
                    ),
                    TextField(
                      controller: _num1,
                      decoration: InputDecoration(
                          hintText: "Ingrese un numero",
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 2.4),
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Segundo numero",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    TextField(
                      controller: _num2,
                      decoration: InputDecoration(
                          hintText: 'Ingrese un numero',
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 2.4),
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Tercer numero"),
                    TextField(
                      controller: _resultado,
                      decoration: InputDecoration(
                          hintText: "Resultado",
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                                width: 2.4,
                              ),
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 125,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orangeAccent.shade100),
                        onPressed: sumar,
                        child: Text(
                          "sumar",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )),
                  ),
                  Container(
                    width: 125,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurpleAccent.shade100),
                        onPressed: restar,
                        child: Text(
                          "restar",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )),
                  )
                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 125,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.greenAccent.shade100),
                        onPressed: multiplicar,
                        child: Text(
                          "multiplicar",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )),
                  ),
                  Container(
                    width: 125,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent.shade100),
                        onPressed: dividir,
                        child: Text(
                          "dividir",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )),
                  )
                ],
              )
            ],
          ),
        ),

        // backgroundColor: Colors.blue.shade200,
      ),
    );
  }
}
