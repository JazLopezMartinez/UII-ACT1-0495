import 'package:flutter/material.dart';
import 'package:lopez_uii_act1_0495/pantallas0495/panel0495/panel_pantalla0495.dart';

void main() => runApp(const MiAppFlores());

class MiAppFlores extends StatelessWidget {
  const MiAppFlores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Lopez Flores 0495",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: true),
      home: const PanelPantalla0495(),
    );
  }
}
