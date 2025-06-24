import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 180, 167, 202),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Ejercicio 1: 3 Columnas + Fila"),
        backgroundColor: const Color.fromARGB(255, 224, 218, 235),
        centerTitle: false,
      ),
      body: Column(
        children: [
          // Sección de 3 columnas
          Expanded(
            flex: 3,
            child: Row(
              children: [
                // Columna 1: Apoyo
                Expanded(
                  child: Container(
                    color: Colors.lightBlue[100],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.thumb_up, size: 50, color: Colors.indigo),
                        SizedBox(height: 10),
                        Text(
                          "Apoyo",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Columna 2: Seguridad
                Expanded(
                  child: Container(
                    color: Colors.lightBlue[200],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.security, size: 50, color: Colors.indigo),
                        SizedBox(height: 10),
                        Text(
                          "Seguridad",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Columna 3: Comunidad
                Expanded(
                  child: Container(
                    color: Colors.lightBlue[300],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.public, size: 50, color: Colors.indigo),
                        SizedBox(height: 10),
                        Text(
                          "Comunidad",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Fila inferior con mensaje
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue[100],
              child: Center(
                child: Text(
                  "¡Unidos contra la violencia!",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
