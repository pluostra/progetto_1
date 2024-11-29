import 'package:flutter/material.dart';

class Password extends StatefulWidget{
  const Password({super.key});

  @override
  _Password createState() => _Password();
}

class _Password extends State<Password>{
  final _controlloTesto = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controlloTesto,
              decoration: InputDecoration(
                hintText: 'Inserisci password',
                  border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: (){
                  _controlloTesto.clear();
                },
                  icon: const Icon(Icons.clear),
                )
              ),
            ),
            MaterialButton(onPressed: (){})
          ],
        ),
      ),
    );
  }
}