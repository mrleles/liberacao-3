import 'package:flutter/material.dart';
import 'package:liberacao_3_flutter/Widgets/servico_dropdown.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liberação',
      theme: ThemeData(useMaterial3: true),
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Liberação'),
          actions: [
            Builder(builder: (BuildContext context) {
              return const IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ));
            }),
            Builder(builder: (BuildContext context) {
              return const IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.save,
                    color: Colors.white,
                  ));
            }),
            Builder(builder: (BuildContext context) {
              return const IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.send,
                    color: Colors.white,
                  ));
            })
          ],
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Serviço:   '),
                    ServicoDropdown()
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
