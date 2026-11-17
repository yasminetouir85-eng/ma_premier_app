import 'package:flutter/material.dart';
class AnimePage extends StatelessWidget {
const AnimePage({super.key});
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('Animé'),
),
body: const Center(
child: Text('La liste des animés arrive au TP 03'),
),
);
}
}